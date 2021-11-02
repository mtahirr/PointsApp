import 'package:flutter/material.dart';
import 'package:pointsapp/screens/welcome.dart';

class AdminLogin extends StatefulWidget {
  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
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
                image: AssetImage('assets/background_ic.png'), fit: BoxFit.cover),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                 SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Group 1326.png'),
                 SizedBox(
                  height: 25,
                ),
                Text(
                  'إعادة تسجيل الدخول',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff28476E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20,right: 20),
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
                  margin: EdgeInsets.only(left: 30, top: 20,right: 20),
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
                        hintText: 'كلمة السر',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff28476E),
                        ),
                        border: InputBorder.none,
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ليس لديك حساب ؟ اشتراك',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'سيت كلمة المرور؟',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => AdminWelcome()));
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
                        'استمرار',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  height:10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
