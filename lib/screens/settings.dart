import 'package:flutter/material.dart';
import 'package:pointsapp/screens/authentification/auth.dart';
import 'package:pointsapp/screens/editscreen.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
 Future<void>signOut()async{
    await Authentification().signOut();
  }



  bool switchControl = false;
  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

  bool switchControl1 = false;
  void toggleSwitch1(bool value) {
    if (switchControl1 == false) {
      setState(() {
        switchControl1 = true;
      });
    } else {
      setState(() {
        switchControl1 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الاعدادات',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/Group 1335.png'),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Stack(
                children: [
                  Container(
                    width: 210,
                    // height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(vertical: 100),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Group 196.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 43,
                    child: Center(
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xff35DDDE),
                        child: CircleAvatar(
                          radius: 54,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Image.asset('assets/Group 62.png'),
                      ),

                      InkWell(
                                               onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (ctx) => EditScreen()));
                      },
                        child: Image.asset('assets/Group 61.png')),
                      // SizedBox(
                      //   width: 5,
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'اسم الستخدم',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'uername@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.2,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "ريال",
                                style: TextStyle(
                                    color: Color(0xff35DDDE),
                                    fontSize: 15,
                                    fontFamily: 'JF Flat'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "50",
                                style: TextStyle(
                                    color: Color(0xff35DDDE),
                                    fontSize: 15,
                                    fontFamily: 'JF Flat'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "النقاط  ",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'JF Flat'),
                              ),
                              Image.asset('assets/wallet.png')
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.01,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "رمز الكوبون  ",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: 'JF Flat'),
                                  ),
                                ),
                              ),
                              Image.asset('assets/NoPath - Copy (34).png')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.2,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                  scale: 1.10,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: switchControl,
                                    activeColor: Colors.white,
                                    activeTrackColor: Colors.blue,
                                    inactiveThumbColor: Color(0xff28476E),
                                    inactiveTrackColor: Colors.grey,
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "الاشعارات  ",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'JF Flat'),
                              ),
                              Image.asset('assets/Group 75.png')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                  scale: 1.10,
                                  child: Switch(
                                    onChanged: toggleSwitch1,
                                    value: switchControl,
                                    activeColor: Colors.white,
                                    activeTrackColor: Colors.blue,
                                    inactiveThumbColor: Color(0xff28476E),
                                    inactiveTrackColor: Colors.grey,
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "اللغة  ",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'JF Flat'),
                              ),
                              Image.asset('assets/earth.png')
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.02,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff35DDDE),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "الدعم الفني  ",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'JF Flat'),
                              ),
                              Image.asset('assets/NoPath - Copy (42).png')
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff35DDDE),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "الشروط والاحكام  ",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'JF Flat'),
                              ),
                              Image.asset('assets/NoPath - Copy (35).png')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  signOut();
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.2,
                    // width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تسجيل الخروج  ",
                          style: TextStyle(fontSize: 15, fontFamily: 'JF Flat'),
                        ),
                        Image.asset('assets/logout.png')
                      ],
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
