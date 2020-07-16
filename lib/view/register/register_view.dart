import 'package:flutter/material.dart';
import 'package:project07/model/applicant/applicant.dart';
import 'package:project07/styles/dimension/dimens.dart';
import 'package:project07/styles/icon/socicon_icons.dart';
import 'package:project07/view/common/edit_text_form.dart';
import 'package:project07/viewmodel/register/register_applicant.dart';
import 'package:intl/intl.dart';
import 'package:project07/viewmodel/register/register_company.dart';

class RegisterPage extends StatelessWidget {
  final String email;

  const RegisterPage({Key key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            CircleAvatar(
              child: Image.asset('assets/images/logo.png'),
              radius: 100,
              backgroundColor: Colors.transparent,
            ),
            Text('SIGN UP',
                style: TextStyle(
                  fontSize: Dimens.size35,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: RegisterScreen(email: email, key: key),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  final String email;

  const RegisterScreen({Key key, this.email}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState(email);
}

class _RegisterScreenState extends State<RegisterScreen> {
  final String email;
  int selectedRole;
  int selectedGender;
  String birthdate = 'Birthdate';
  String differenceInYears;
  final fullnameController = TextEditingController();
  final phoneControler = TextEditingController();
  final identifyController = TextEditingController();
  final addressController = TextEditingController();
  final birthdateController = TextEditingController();
  final legalController = TextEditingController();
  final addressCompanyController = TextEditingController();
  final phoneCompanyController = TextEditingController();
  final taxIdentifiController = TextEditingController();
  final nameCompanyController = TextEditingController();
  DateTime today = DateTime.now();
  RegisterApplicant registerApplicant = RegisterApplicant();
  RegisterCompany registerCompany = RegisterCompany();
  Applicant applicant;

  _RegisterScreenState(this.email);

  @override
  void initState() {
    super.initState();
    selectedRole = 1;
    selectedGender = 3;

    fullnameController.addListener(() {
      registerApplicant.fullnameSink.add(fullnameController.text);
    });

    phoneControler.addListener(() {
      registerApplicant.phoneSink.add(phoneControler.text);
    });

    identifyController.addListener(() {
      registerApplicant.identifyCardNumberSink.add(identifyController.text);
    });

    addressController.addListener(() {
      registerApplicant.addressSink.add(addressController.text);
    });

    birthdateController.addListener(() {
      registerApplicant.birthdateSink.add(differenceInYears);
    });

    legalController.addListener(() {
      registerCompany.legalSink.add(legalController.text);
    });

    nameCompanyController.addListener(() {
      registerCompany.nameSink.add(nameCompanyController.text);
    });

    phoneCompanyController.addListener(() {
      registerCompany.phoneSink.add(phoneCompanyController.text);
    });

    taxIdentifiController.addListener(() {
      registerCompany.taxIdentifySink.add(taxIdentifiController.text);
    });

    addressCompanyController.addListener(() {
      registerCompany.addressSink.add(addressCompanyController.text);
    });
  }

  setSelectedGender(int value) {
    setState(() {
      selectedGender = value;
    });
  }

  @override
  void dispose() {
    super.dispose();
    registerApplicant.dispose();
    registerCompany.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 25),
            tabs: <Widget>[
              Tab(text: 'Applicant'),
              Tab(text: 'Company'),
            ],
          ),
          body: TabBarView(children: [
            applicantRegisterDetails(),
            companyRegisterDetails(),
          ]),
        ),
      ),
    );
  }

  Widget companyRegisterDetails() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.zero,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          //email
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: '$email',
            ),
            readOnly: true,
            enabled: false,
          ),
          SizedBox(height: 10),
          StreamBuilder<String>(
              stream: registerCompany.legalStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  icon: Icon(Icons.person),
                  controller: legalController,
                  labelText: 'The Legal Representative',
                  errorText: snapshot.data,
                );
              }),
          SizedBox(height: 10),
          StreamBuilder<String>(
              stream: registerCompany.nameStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  icon: Icon(Socicon.adjust),
                  labelText: 'Company Name',
                  errorText: snapshot.data,
                  controller: nameCompanyController,
                );
              }),
          SizedBox(height: 10),
          StreamBuilder<String>(
              stream: registerCompany.addressStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  icon: Icon(Icons.home),
                  labelText: 'Address',
                  errorText: snapshot.data,
                  controller: addressCompanyController,
                );
              }),
          SizedBox(height: 10),
          //phone
          StreamBuilder<String>(
              stream: registerCompany.phoneStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  icon: Icon(Socicon.phone_squared),
                  labelText: 'Phone number',
                  errorText: snapshot.data,
                  controller: phoneCompanyController,
                );
              }),
          SizedBox(height: 10),
          //tax coded
          StreamBuilder<String>(
              stream: registerCompany.taxIdentifyStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  errorText: snapshot.data,
                  controller: taxIdentifiController,
                  icon: Icon(Socicon.money),
                  labelText: 'Tax Identify Number',
                );
              }),
          SizedBox(height: 10),
          //btn
          StreamBuilder<bool>(
              stream: registerCompany.btnRegisterStream,
              builder: (context, snapshot) {
                return RaisedButton(
                  onPressed: snapshot.data == true ? () {} : null,
                  child: Text('Resgiter', style: TextStyle(fontSize: 20)),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              }),
        ],
      ),
    );
  }

  Widget applicantRegisterDetails() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.zero,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: '$email',
            ),
            readOnly: true,
            enabled: false,
          ),
          SizedBox(height: 10),
          // fullname
          StreamBuilder<String>(
              stream: registerApplicant.fullnameStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  controller: fullnameController,
                  labelText: 'Fullname',
                  errorText: snapshot.data,
                  icon: Icon(Icons.person),
                );
              }),
          SizedBox(height: 10),
          //phone
          StreamBuilder<String>(
              stream: registerApplicant.phoneStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  controller: phoneControler,
                  labelText: 'Phone',
                  errorText: snapshot.data,
                  icon: Icon(Icons.phone),
                );
              }),
          SizedBox(height: 10),
          //address
          StreamBuilder<String>(
              stream: registerApplicant.addressStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  controller: addressController,
                  labelText: 'Address',
                  errorText: snapshot.data,
                  icon: Icon(Icons.home),
                );
              }),
          SizedBox(height: 10),
          // identify card
          StreamBuilder<String>(
              stream: registerApplicant.identifyCardNumberStream,
              builder: (context, snapshot) {
                return EditTextFormField(
                  icon: Icon(Socicon.credit_card),
                  labelText: 'Your Identify Card',
                  controller: identifyController,
                  errorText: snapshot.data,
                );
              }),
          SizedBox(height: 10),
          genderRadio(),
          //birthdate
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.date_range, size: 35),
                  onPressed: () async {
                    final dtPick = await showDatePicker(
                      context: context,
                      initialDate: today,
                      firstDate: DateTime(1980),
                      lastDate: DateTime(2021),
                    );
                    setState(() {
                      Duration duration = DateTime.now().difference(today);
                      differenceInYears =
                          (duration.inDays / 365).floor().toString();
                      today = dtPick;
                      birthdate = DateFormat('dd/MM/yyyy').format(today);
                    });
                  },
                ),
                flex: 0,
              ),
              SizedBox(width: 15),
              Flexible(
                child: StreamBuilder<String>(
                    stream: registerApplicant.birthdateStream,
                    builder: (context, snapshot) {
                      return TextFormField(
                        controller: birthdateController,
                        readOnly: true,
                        // enabled: false,
                        onTap: () async {
                          final dtPick = await showDatePicker(
                            context: context,
                            initialDate: today,
                            firstDate: DateTime(1980),
                            lastDate: DateTime(2021),
                          );
                          setState(() {
                            Duration duration =
                                DateTime.now().difference(today);
                            differenceInYears =
                                (duration.inDays / 365).floor().toString();
                            today = dtPick;
                            birthdate = DateFormat('dd/MM/yyyy').format(today);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Birthday',
                          errorText: snapshot.data,
                          prefixText: birthdate,
                        ),
                      );
                    }),
                flex: 10,
              ),
            ],
          ),
          SizedBox(height: 20),
          StreamBuilder<bool>(
              stream: registerApplicant.btnRegisterStream,
              builder: (context, snapshot) {
                return SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    onPressed: snapshot.data == true
                        ? () async {
                            setState(() {
                              String name = fullnameController.text;
                              String phone = phoneControler.text;
                              String address = addressController.text;
                              String identi = identifyController.text;
                              String bith = today.toIso8601String();
                              String gender;
                              if (selectedGender == 1) {
                                gender = 'true';
                              } else {
                                gender = 'false';
                              }
                              registerApplicant.createApplicant(
                                context,
                                email,
                                phone,
                                name,
                                bith,
                                gender,
                                address,
                                identi,
                              );
                            });
                          }
                        : null,
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              }),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget genderRadio() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Gender: ',
              style: TextStyle(
                  fontSize: Dimens.size20, fontWeight: FontWeight.w600)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Radio(
                value: 3,
                groupValue: selectedGender,
                onChanged: (val) {
                  setSelectedGender(val);
                },
                activeColor: Colors.black,
              ),
              Text(
                'Male',
                style: TextStyle(
                  fontSize: Dimens.size20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Radio(
                value: 4,
                groupValue: selectedGender,
                onChanged: (val) {
                  setSelectedGender(val);
                },
                activeColor: Colors.black,
              ),
              Text(
                'Female',
                style: TextStyle(
                  fontSize: Dimens.size20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
