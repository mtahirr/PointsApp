import 'package:flutter/material.dart';
import 'package:pointsapp/screens/settings.dart';

class NotificationDetail extends StatefulWidget {
  @override
  _NotificationDetailState createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
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
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/Group 36.png'),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/NoPath - Copy (37).png'),
                ),
                InkWell(
                   onTap: () {
                      Navigator.pop(context);
                    },
                  child: Image.asset('assets/Group 1335.png'),
                ),
              ],
            ),
            Text(
              'المهام',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff28476E),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: 100,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Mask Group 8.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'اضف عبر سناب شات',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ' واحصل على',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black54,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 80,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: 100,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Mask Group 9.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تسجيل الدخول اليومي',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff28476E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => SettingPage()));
                  },
              child: Card(
                elevation: 5,
                shadowColor: Colors.black54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 80,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
