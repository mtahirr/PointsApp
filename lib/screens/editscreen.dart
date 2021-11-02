import 'package:flutter/material.dart';
import 'package:pointsapp/screens/homePage.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  int _radioValue = 0;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
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
                            onTap: () {},
                            child: Image.asset('assets/Group 62.png'))
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
                SizedBox(
                  height: 20,
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('الاسم بالكامل',
                                style: TextStyle(color: Color(0xff979797))),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff35DDDE),
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
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/edit.png'),
                            Text('رقم الجـوال',
                                style: TextStyle(color: Color(0xff979797))),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff35DDDE),
                                width: 1,
                              ),
                            ),
                          ),
                          child: TextFormField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                hintText: '0388798897',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff28476E),
                                ),
                                border: InputBorder.none,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('البريد الالكتروني',
                                style: TextStyle(color: Color(0xff979797))),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff35DDDE),
                                width: 1,
                              ),
                            ),
                          ),
                          child: TextFormField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                hintText: 'username@gmail.com',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff28476E),
                                ),
                                border: InputBorder.none,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  new Text(
                                    'انثى',
                                    style: new TextStyle(fontSize: 12.0),
                                  ),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        unselectedWidgetColor: Colors.black),
                                    child: new Radio(
                                      activeColor: Color(0xff35DDDE),
                                      value: 0,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  new Text(
                                    'ذكر',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                        unselectedWidgetColor: Colors.black),
                                    child: new Radio(
                                      activeColor: Color(0xff35DDDE),
                                      value: 1,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) => HomePage()));
                          },
                          child: Card(
                            elevation: 8,
                            shadowColor: Color(0xff35DDDE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 140,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('تحديث المعلومات')),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            ),
        ));
  }
}
