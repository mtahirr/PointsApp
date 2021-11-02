import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointsapp/screens/homePage.dart';
import 'package:pointsapp/screens/phoneNo.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isMale = false;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber=TextEditingController();
  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = new RegExp(p);
  bool isLoading = false;
  UserCredential authResult;
  void submit() async {
    setState(() {
      isLoading = true;
    });
    try {
      authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
    } on PlatformException catch (e) {
      String message = "Please Check Internet";
      if (e.message != null) {
        message = e.message.toString();
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
    await FirebaseFirestore.instance
        .collection('UserData')
        .doc(authResult.user.uid)
        .set({
      "UserfirstName": firstName.text,
      "UserlastName": lastName.text,

      "UserEmail": email.text,
      "UserNumber": phoneNumber.text+'@gmail.com',
      "UserId": authResult.user.uid,
      "UserAddress": password.text,
      "UserGender": isMale == true ? "Female" : "Male",
    });
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
    setState(() {
      isLoading = false;
    });
  }

  void validation(context) {
    if (email.text.isEmpty &&
        password.text.isEmpty &&
        firstName.text.isEmpty &&
        lastName.text.isEmpty &&
       
        phoneNumber.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("All Fields are Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (firstName.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("FirstName is Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (lastName.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("LastName is Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (email.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Email is Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (!regExp.hasMatch(email.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Email is invalid"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (phoneNumber.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("PhoneNumber is Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (phoneNumber.text.length < 11) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("PhoneNumber Length must be 11 digits"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("password is Empty"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else if (password.text.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("password is too short!"),
          duration: Duration(milliseconds: 300),
        ),
      );
    } else {
      submit();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
          decoration: BoxDecoration(
            image: DecorationImage(
                // colorFilter: new ColorFilter.mode(
                //     Colors.white.withOpacity(0.2), BlendMode.dstATop),
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
                  height: 10,
                ),
                Text(
                  'مستخدم جديد',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff28476E),
                                width: 1,
                              ),
                            ),
                          ),
                          child: TextFormField(
                              controller: lastName,
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                hintText: 'الاسم الاخير',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff28476E),
                                ),
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff28476E),
                                width: 1,
                              ),
                            ),
                          ),
                          child: TextFormField(
                              controller: firstName,
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                hintText: 'الاسم الأول',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff28476E),
                                ),
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 130, top: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff28476E),
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextFormField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'اسم المستخدم',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff28476E),
                        ),
                        border: InputBorder.none,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff28476E),
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextFormField(
                      controller: email,
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'الايميل',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff28476E),
                        ),
                        border: InputBorder.none,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 130, top: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff28476E),
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextFormField(
                      controller: password,
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'كلمة السر',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff28476E),
                        ),
                        border: InputBorder.none,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff28476E),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text('+966'),
                      Expanded(
                        child: TextFormField(
                          controller: phoneNumber,
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            hintText: 'رقم الهاتف',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0xff28476E),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff28476E),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isMale = !isMale;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Center(
                            // انثى text
                            child: Text(
                              'انثى',
                              style: TextStyle(
                                  color: isMale == false
                                      ? Color(0xff28476E)
                                      : Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'JF Flat',
                                  fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.symmetric(vertical: 10),
                        child: VerticalDivider(
                          width: 30,
                          thickness: 2,
                          color: Color(0xff28476E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = !isMale;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Center(
                            child: Text(
                              'ذكر',
                              style: TextStyle(
                                  color: isMale == true
                                      ? Color(0xff28476E)
                                      : Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'JF Flat',
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (ctx) => PhoneNumber()));
                 validation(context);
                  },
                  child: isLoading == false? Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff35DDDE)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff28476E)),
                    child: Center(
                      child: Text(
                        'تسجيل',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ): Center(
            child: CircularProgressIndicator(),
          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
