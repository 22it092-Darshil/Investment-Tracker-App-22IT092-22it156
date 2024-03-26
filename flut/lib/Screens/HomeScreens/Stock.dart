import 'package:flutter/material.dart';
class Stocks extends StatefulWidget {
  const Stocks({super.key});

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff76ABAE),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(top: 40, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your Investment ",style: TextStyle(fontSize: 19),),
                        Text("₹50,320",style: TextStyle(fontSize: 30),),
                        SizedBox(height: 25,),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xff222831),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Total Profit",style: TextStyle(color: Color(0xffEEEEEE),fontSize: 17),),
                                Text("₹20,500",style: TextStyle(color: Color(0xffEEEEEE),fontSize: 17),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12,top: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xEEEEEE),
                  ),
                  child: Text('Portfolio Stocks',style: TextStyle(fontSize: 16),),
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
                          child: ListTile(
                            title: Text('NHPC'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "80.50 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "300"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+95.30 (+10.21%)",
                                    style: TextStyle(fontSize: 16, color: Colors.green),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.green),
                                                text: "+15.30 (+25.16%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('SUZLON'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "20.10 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "250"),
                                  ]),
                            ),
                            trailing: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "+37.35 (+0.13%)",
                                    style: TextStyle(fontSize: 16, color: Colors.green),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.green),
                                                text: "+17.25 (+25.36%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('IRFC'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "128.10 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "26"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [
                                  Text(
                                    "+145.60 (+1.20%)",
                                    style: TextStyle(fontSize: 16, color: Colors.green),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.green),
                                                text: "+15.89 (+30.16%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('BCLIND'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "78.37 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "100"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [
                                  Text(
                                    "-59.35 (-12.25%)",
                                    style: TextStyle(fontSize: 16, color: Colors.red),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.red),
                                                text: "-18 (-23.63%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('TATAMOTORS'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "568 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "50"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+979.50 (+4.35%)",
                                    style: TextStyle(fontSize: 16, color: Colors.green),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.green),
                                                text: "+456.89 (+46.16%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('BAJAJAUTO'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "7350.30 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "1"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+269.20 (+5.56%)",
                                    style: TextStyle(fontSize: 16, color: Colors.green),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.green),
                                                text: "+2236.89 (+20.69%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('IREDA'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "137.10 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "20"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [
                                  Text(
                                    "+137.60 (+5.20%)",
                                    style: TextStyle(fontSize: 16, color: Colors.green),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.green),
                                                text: "+15.89 (+30.16%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color:Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: ListTile(
                            title: Text('IOC'),
                            subtitle: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: 'Avg : ',
                                  children: [
                                    TextSpan(text: "200.20 ▪ "),
                                    TextSpan(text: "Qty : "),
                                    TextSpan(text: "100"),
                                  ]),
                            ),
                            trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [
                                  Text(
                                    "-59.35 (-17.25%)",
                                    style: TextStyle(fontSize: 16, color: Colors.red),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: 'ROI  ',
                                          children: [
                                            TextSpan(
                                                style: TextStyle(color: Colors.red),
                                                text: "-52 (-23.63%)"
                                            ),
                                          ])),
                                ]),
                          )
                      ),



                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
