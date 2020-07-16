import 'dart:async';

import 'package:project07/viewmodel/validation/validator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class RegisterCompany {
  final _companyNameSuject = BehaviorSubject<String>();
  final _legalSuject = BehaviorSubject<String>();
  final _addressSuject = BehaviorSubject<String>();
  final _phoneNumberSuject = BehaviorSubject<String>();
  final _taxNumberSuject = BehaviorSubject<String>();
  final _btnRegisterSubject = BehaviorSubject<bool>();


  var addressCompanyValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (address, sink) {
    sink.add(Validation.validateAddress(address));
  });

  var nameValidation =
      StreamTransformer<String, String>.fromHandlers(handleData: (name, sink) {
    sink.add(Validation.validateCompanyName(name));
  });

  var legalValidation =
      StreamTransformer<String, String>.fromHandlers(handleData: (legal, sink) {
    sink.add(Validation.validateLegal(legal));
  });

  var phoneValidation =
      StreamTransformer<String, String>.fromHandlers(handleData: (phone, sink) {
    sink.add(Validation.validatePhone(phone));
  });

  var identifyValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (identifyCard, sink) {
    sink.add(Validation.validateTaxCode(identifyCard));
  });

  Stream<String> get nameStream =>
      _companyNameSuject.stream.transform(nameValidation);

  Sink<String> get nameSink => _companyNameSuject.sink;

  Stream<String> get addressStream =>
      _addressSuject.stream.transform(addressCompanyValidation);

  Sink<String> get addressSink => _addressSuject.sink;

  Stream<String> get legalStream =>
      _legalSuject.stream.transform(legalValidation);

  Sink<String> get legalSink => _legalSuject.sink;

  Stream<String> get phoneStream =>
      _phoneNumberSuject.stream.transform(phoneValidation);

  Sink<String> get phoneSink => _phoneNumberSuject.sink;

  Stream<String> get taxIdentifyStream =>
      _taxNumberSuject.stream.transform(identifyValidation);

  Sink<String> get taxIdentifySink => _taxNumberSuject.sink;

  Stream<bool> get btnRegisterStream => _btnRegisterSubject.stream;
  Sink<bool> get btnRegisterSink => _btnRegisterSubject.sink;

  RegisterCompany() {
    Rx.combineLatest5(
        _addressSuject,
        _companyNameSuject,
        _legalSuject,
        _taxNumberSuject,
        _phoneNumberSuject, (address, name, legal, taxCode, phone) {
      return Validation.validateAddress(address) == null &&
          Validation.validateCompanyName(name) == null &&
          Validation.validateLegal(legal) == null &&
          Validation.validateTaxCode(taxCode) == null &&
          Validation.validatePhone(phone) == null;
    }).listen((enable) {
       btnRegisterSink.add(enable);
    });
  }

  dispose(){
    _addressSuject.close();
    _btnRegisterSubject.close();
    _phoneNumberSuject.close();
    _taxNumberSuject.close();
    _companyNameSuject.close();
    _legalSuject.close();
  }

  
}
