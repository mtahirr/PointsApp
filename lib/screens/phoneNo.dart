import 'package:flutter/material.dart';
import 'package:pointsapp/screens/otp.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  TextEditingController inputcontroller = TextEditingController();
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
                      controller: inputcontroller,
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
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => OTP(inputcontroller.text)));
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
      ),
    );
  }
}
