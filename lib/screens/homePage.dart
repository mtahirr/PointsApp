import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/Group 36.png'),
                ),
              ],
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/NoPath - Copy (41).png'),
                        Text(
                          'أجب على الاستبيان',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff28476E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      shadowColor: Colors.black54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 120,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange),
                              Row(
                                children: [
                                  Text(
                                    'نقاط',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff28476E),
                                    ),
                                  ),
                                  Text(
                                    '10',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff28476E),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Expanded(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/NoPath - Copy (39).png'),
                            Text(
                              'شاهد اعلان',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff28476E),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 120,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orange),
                                  Row(
                                    children: [
                                      Text(
                                        'نقاط',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff28476E),
                                        ),
                                      ),
                                      Text(
                                        '10',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff28476E),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/NoPath - Copy (40).png'),
                          Text(
                            'دعوة صديق',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff28476E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 120,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                Row(
                                  children: [
                                    Text(
                                      'نقاط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff28476E),
                                      ),
                                    ),
                                    Text(
                                      '10',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff28476E),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                   
                    ],
                  ),
                ),
                          ),
              ),
        
            ]),
            SizedBox(height: 20,),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                    
                      Text(
                        'النقاط',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff28476E),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   children:[
                      //     Container(
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10),
                             
                      //       ),
                      //       child:Column(
                      //         children: [
                      //           Container(
                      //             height:10,
                      //             padding: EdgeInsets.symmetric(vertical: 5),
                      //             color: Color(0xff35DDDE),
                      //           ),
                      //           Container(
                      //              color: Color(0xff28476E),
                      //             child: Text('1',style: TextStyle(
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,

                      //               color: Colors.white,
                      //             ),),
                      //           )
                      //         ],
                      //       )
                      //     )
                      //   ]
                      // )
                      Image.asset('assets/Group 1336.png')
                   
                    ],
                  ),
                ),
                          ),
          ]),
        ),
      ),
    );
  }
}
