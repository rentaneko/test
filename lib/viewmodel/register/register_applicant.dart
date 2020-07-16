import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project07/model/applicant/applicant.dart';
import 'package:project07/view/failed.dart';
import 'package:project07/view/test.dart';
import 'package:project07/viewmodel/validation/validator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class RegisterApplicant {
  final _fullnameSubject = BehaviorSubject<String>();
  final _phoneSubject = BehaviorSubject<String>();
  final _identifyCardNumberSubject = BehaviorSubject<String>();
  final _btnRegisterSubject = BehaviorSubject<bool>();
  final _addressSubject = BehaviorSubject<String>();
  final _birthdateSubject = BehaviorSubject<String>();

  var addressValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (address, sink) {
    sink.add(Validation.validateAddress(address));
  });

  var fullnameValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (fullname, sink) {
    sink.add(Validation.validateFullName(fullname));
  });

  var phoneValidation =
      StreamTransformer<String, String>.fromHandlers(handleData: (phone, sink) {
    sink.add(Validation.validatePhone(phone));
  });

  var identifyValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (identifyCard, sink) {
    sink.add(Validation.validateINC(identifyCard));
  });

  var birthdateValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (birthdate, sink) {
    sink.add(Validation.validateBirthdate(birthdate));
  });

  Stream<String> get fullnameStream =>
      _fullnameSubject.stream.transform(fullnameValidation);
  Sink<String> get fullnameSink => _fullnameSubject.sink;

  Stream<String> get phoneStream =>
      _phoneSubject.stream.transform(phoneValidation);
  Sink<String> get phoneSink => _phoneSubject.sink;

  Stream<String> get identifyCardNumberStream =>
      _identifyCardNumberSubject.stream.transform(identifyValidation);
  Sink<String> get identifyCardNumberSink => _identifyCardNumberSubject.sink;

  Stream<String> get addressStream =>
      _addressSubject.stream.transform(addressValidation);
  Sink<String> get addressSink => _addressSubject.sink;

  Stream<bool> get btnRegisterStream => _btnRegisterSubject.stream;
  Sink<bool> get btnRegisterSink => _btnRegisterSubject.sink;

  Stream<String> get birthdateStream =>
      _birthdateSubject.stream.transform(birthdateValidation);
  Sink<String> get birthdateSink => _birthdateSubject.sink;

  RegisterApplicant() {
    Rx.combineLatest5(_fullnameSubject, _phoneSubject,
        _identifyCardNumberSubject, _addressSubject, _birthdateSubject,
        (fullname, phone, identifyCardNumber, address, birthdate) {
      return Validation.validateFullName(fullname) == null &&
          Validation.validatePhone(phone) == null &&
          Validation.validateINC(identifyCardNumber) == null &&
          Validation.validateAddress(address) == null &&
          Validation.validateBirthdate(birthdate) == null;
    }).listen((enable) {
      btnRegisterSink.add(enable);
    });
  }

  dispose() {
    _fullnameSubject.close();
    _identifyCardNumberSubject.close();
    _btnRegisterSubject.close();
    _phoneSubject.close();
    _addressSubject.close();
    _birthdateSubject.close();
  }

  Future<Applicant> createApplicant(
      BuildContext context,
      String email,
      String phone,
      String name,
      String birth,
      String gender,
      String address,
      String card) async {
    final String apiUrl =
        'https://instancejob2.azurewebsites.net/api/applicants';
    final response = await http.post(
      apiUrl,
      body: json.encode(<String, String>{
        'email': email,
        'phone': phone,
        'fullName': name,
        'birthdate': birth,
        'gender': gender,
        'avatar': "string",
        'address': address,
        'identifyCardNumer': card,
        'seflDescribe': '',
      }),
    );

    if (response.statusCode == 200) {
      final String responseStr = response.body;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Tester(response: responseStr)));
      return Applicant.fromJson(json.decode(response.body));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Falied(
                    failed: 'Ngu Ngốc',
                  )));
      print('Status ' + response.statusCode.toString());
      print('Body' + response.body.toString());
      throw Exception('Failed to load album');
    }
  }
}
