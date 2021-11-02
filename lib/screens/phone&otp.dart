

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pointsapp/screens/login.dart';
import 'package:pointsapp/screens/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';


enum LoginScreen { SHOW_MOBILE_ENTER_WIDGET, SHOW_OTP_FORM_WIDGET }

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  TextEditingController _phone = TextEditingController();
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  TextEditingController three = TextEditingController();
  TextEditingController four = TextEditingController();
  TextEditingController five = TextEditingController();
  TextEditingController six = TextEditingController();
  String otp;
  String phoneCode;
  String phone;
  String sign;
  TextEditingController phoneController = TextEditingController();
  LoginScreen currentState = LoginScreen.SHOW_MOBILE_ENTER_WIDGET;
  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationID = "";
  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async {
    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);

      if (authCred.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp()));
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Some Error Occured. Try Again Later')));
    }
  }

  ///
  /// mobile number widget
  ///
  showMobilePhoneWidget(context) {
    return  SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background_ic.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/Group 1335.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 60),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff28476E),
                        width: 2,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'هل نسيت كلمة السر',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                            child: Text(
                          'أدخل رقم هاتفك أدناه وسنرسل إليك رسالة نصية تحتوي على رمز التحقق لتغيير كلمة المرور الخاصة بك',
                          textAlign: TextAlign.right,
                        )),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(
                      left: 30, right: 30, top: 150, bottom: 50),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff28476E),
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'رقم الهاتف',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff28476E),
                        ),
                        border: InputBorder.none,
                      )),
                ),
                InkWell(
                  onTap: () async {
                    phone = "+92" + phoneController.text;
                      SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.setString("phone", phone.toString());
                      await _auth.verifyPhoneNumber(
                          phoneNumber: "+${phone}",
                          verificationCompleted: (phoneAuthCredential) async {},
                          verificationFailed: (verificationFailed) {
                            print(verificationFailed);
                          },
                          codeSent: (verificationID, resendingToken) async {
                            setState(() {
                              currentState = LoginScreen.SHOW_OTP_FORM_WIDGET;
                              this.verificationID = verificationID;
                            });
                          },
                          codeAutoRetrievalTimeout: (verificationID) async {});
                    
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 70),
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff35DDDE)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff28476E)),
                    child: Center(
                      child: Text(
                        'ارسال',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  ///
  /// otp widget
  ///
  showOtpFormWidget(context) {
    return SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(20, 40, 20, 30),
          decoration: BoxDecoration(
            image: DecorationImage(
                // colorFilter: new ColorFilter.mode(
                //     Colors.white.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage('assets/background_ic.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/Group 1335.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff28476E),
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'التحقق من رقم الهاتف',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                        child: Text(
                      '. أدخل الرقم المرسل لرقم هاتفك',
                      textAlign: TextAlign.right,
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff28476E),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: one,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff28476E),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: two,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff28476E),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: three,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff28476E),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: four,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff28476E),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: five,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff28476E),
                              width: 2,
                            ),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                             textInputAction: TextInputAction.next,
                          maxLength: 1,
                          controller: six,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: ()async {
                  print('pppppppppppppppppppppppppppppp');
                        otp = one.text +
                            two.text +
                            three.text +
                            four.text +
                            five.text +
                            six.text;
                        print(otp.toString());
                        SharedPreferences sharedPreferences1 =
                            await SharedPreferences.getInstance();
                        sharedPreferences1.setString("otp", otp.toString());
                        AuthCredential phoneAuthCredential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationID,
                                smsCode: otp.toString());
                        signInWithPhoneAuthCred(phoneAuthCredential);

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CreateAccount()));
                    
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 130),
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff35DDDE)),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff28476E)),
                  child: Center(
                    child: Text(
                      'ارسال',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: currentState == LoginScreen.SHOW_MOBILE_ENTER_WIDGET
          ? showMobilePhoneWidget(context)
          : showOtpFormWidget(context),
    );
  }

  ///
  /// country code picker widget
  ///
  _buildCountryPickerDropdown(
      {bool sortedByIsoCode = false, bool hasSelectedItemBuilder = false}) {
    double dropdownButtonWidth = MediaQuery.of(context).size.width * 0.38;
    //respect dropdown button icon size
    double dropdownItemWidth = dropdownButtonWidth - 30;
    double dropdownSelectedItemWidth = dropdownButtonWidth - 30;
    return Row(
      children: <Widget>[
        SizedBox(
          width: dropdownButtonWidth,
          child: CountryPickerDropdown(
            //show'em (the text fields) you're in charge now
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            //if you have menu items of varying size, itemHeight being null respects
            //that, IntrinsicHeight under the hood ;).
            itemHeight: null,
            //itemHeight being null and isDense being true doesn't play along
            //well together. One is trying to limit size and other is saying
            //limit is the sky, therefore conflicts.
            //false is default but still keep that in mind.
            isDense: false,
            //if you want your dropdown button's selected item UI to be different
            //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
            selectedItemBuilder: hasSelectedItemBuilder == true
                ? (Country country) => _buildDropdownSelectedItemBuilder(
                    country, dropdownSelectedItemWidth)
                : null,
            //initialValue: 'AR',
            itemBuilder: (Country country) => hasSelectedItemBuilder == true
                ? _buildDropdownItemWithLongText(country, dropdownItemWidth)
                : _buildDropdownItem(country, dropdownItemWidth),
            initialValue: 'PK',

            //priorityList is shown at the beginning of list

            sortComparator: sortedByIsoCode
                ? (Country a, Country b) => a.isoCode.compareTo(b.isoCode)
                : null,
            onValuePicked: (Country country) {
              print("${country.name}");
              phoneCode = country.phoneCode;
              print(phoneCode);
            },
          ),
        ),
        Expanded(
          child: TextFormField(
            validator: (value){
              if(value.isEmpty){
                return 'رقم الواتس اب مطلوب';
              }
              else{
                return null;
              }
            },
            controller: _phone,
            decoration: InputDecoration(
                hintText: 'XXX XXXX XXX',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none),
            keyboardType: TextInputType.number,
          ),
        )
      ],
    );
  }

  Widget _buildDropdownItem(Country country, double dropdownItemWidth) =>
      SizedBox(
        width: dropdownItemWidth,
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Expanded(child: Text("+${country.phoneCode}(${country.isoCode})")),
          ],
        ),
      );

  Widget _buildDropdownItemWithLongText(
          Country country, double dropdownItemWidth) =>
      SizedBox(
        width: dropdownItemWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(
                width: 8.0,
              ),
              Expanded(child: Text("${country.name}")),
            ],
          ),
        ),
      );

  Widget _buildDropdownSelectedItemBuilder(
          Country country, double dropdownItemWidth) =>
      SizedBox(
          width: dropdownItemWidth,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  CountryPickerUtils.getDefaultFlagImage(country),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                      child: Text(
                    '${country.name}',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
                ],
              )));
}