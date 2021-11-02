import 'package:flutter/material.dart';
import 'package:pointsapp/screens/adminlogin.dart';

class OTP extends StatefulWidget {
  final String phone;
  OTP(this.phone);
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  TextEditingController three = TextEditingController();
  TextEditingController four = TextEditingController();
  TextEditingController five = TextEditingController();
  TextEditingController six = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => AdminLogin()));
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
      ),
    );
  }
}
