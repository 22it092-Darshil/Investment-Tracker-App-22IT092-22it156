import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Mutual extends StatefulWidget {
  const Mutual({super.key});

  @override
  State<Mutual> createState() => _MutualState();
}

class _MutualState extends State<Mutual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff76ABAE),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    padding: EdgeInsets.only(top: 40, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Color(0xff222831),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.network('https://sphera.com/wp-content/uploads/2023/11/Compliance-Management-Glossary-Page-Icons-11.webp',color :Color(0xffEEEEEE),)),
                                Text("Current value",style: TextStyle(color: Color(0xffEEEEEE),fontSize: 15),),
                                Text("Rs. 60,100",style: TextStyle(color: Color(0xffEEEEEE),fontSize: 23),),


                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Color(0xff222831),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.network('https://sphera.com/wp-content/uploads/2023/11/Compliance-Management-Glossary-Page-Icons-11.webp',color :Color(0xffEEEEEE),)),
                                Text("Investment value",style: TextStyle(color: Color(0xffEEEEEE),fontSize: 15),),
                                Text("Rs. 50,200",style: TextStyle(color: Color(0xffEEEEEE),fontSize: 23),),


                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 12,top: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xEEEEEE),
                    ),
                    child: Text('Your Invested Funds',style: TextStyle(fontSize: 16),),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.gif_box_rounded),
                                title: Text("HDFC Small Cap Fund Growth"),
                                trailing: Text('4.5/5'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          FaIcon(Icons.sip_rounded),
                                          Text(" SIP Amount"),
                                        ],
                                      ),
                                      Text("₹1000/month")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("3Y Return"),
                                      Text("26.71%",style: TextStyle(color: Colors.green),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.grid_view_rounded,size: 20,),
                                          Text(" Category"),
                                        ],
                                      ),
                                      Text("Equity")
                                    ],
                                  ),
                                ],
                              )


                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.gif_box_rounded),
                                title: Text("HDFC Large Cap Fund Growth"),
                                trailing: Text('4.5/5'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month , size: 20,),
                                          Text(" SIP Amount"),
                                        ],
                                      ),
                                      Text("₹500/month")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("3Y Return"),
                                      Text("30.71%",style: TextStyle(color: Colors.green),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.grid_view_rounded,size: 20,),
                                          Text(" Category"),
                                        ],
                                      ),
                                      Text("Equity")
                                    ],
                                  ),
                                ],
                              )


                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.gif_box_rounded),
                                title: Text("SBI Gold Fund Regular Plan"),
                                trailing: Text('5/5'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month , size: 20,),
                                          Text(" SIP Amount"),
                                        ],
                                      ),
                                      Text("₹2000/month")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("3Y Return"),
                                      Text("30.71%",style: TextStyle(color: Colors.green),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.grid_view_rounded,size: 20,),
                                          Text(" Category"),
                                        ],
                                      ),
                                      Text("Others")
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 12,top: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xEEEEEE),
                    ),
                    child: Text('Top Rated Funds',style: TextStyle(fontSize: 16),),
                  ),
                  Container(

                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.gif_box_rounded),
                                title: Text("SBI Contra Fund Regular Plan"),
                                trailing: Text('5/5'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month , size: 20,),
                                          Text(" SIP Amount"),
                                        ],
                                      ),
                                      Text("Min ₹500")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("3Y Return"),
                                      Text("29.29%",style: TextStyle(color: Colors.green),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.grid_view_rounded,size: 20,),
                                          Text(" Category"),
                                        ],
                                      ),
                                      Text("Equity")
                                    ],
                                  ),
                                ],
                              )


                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.gif_box_rounded),
                                title: Text("Quant Small Cap Fund Growth"),
                                trailing: Text('4/5'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month , size: 20,),
                                          Text(" SIP Amount"),
                                        ],
                                      ),
                                      Text("Min ₹1000")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("3Y Return"),
                                      Text("29.3%",style: TextStyle(color: Colors.green),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.grid_view_rounded,size: 20,),
                                          Text(" Category"),
                                        ],
                                      ),
                                      Text("Equity")
                                    ],
                                  ),
                                ],
                              )


                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.gif_box_rounded),
                                title: Text("HDFC Small Cap Fund Growth"),
                                trailing: Text('5/5'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month , size: 20,),
                                          Text(" SIP Amount"),
                                        ],
                                      ),
                                      Text("Min ₹100")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("3Y Return"),
                                      Text("24.8%",style: TextStyle(color: Colors.green),)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.grid_view_rounded,size: 20,),
                                          Text(" Category"),
                                        ],
                                      ),
                                      Text("Equity")
                                    ],
                                  ),
                                ],
                              )


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}