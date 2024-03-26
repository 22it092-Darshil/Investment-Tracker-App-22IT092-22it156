import 'package:flut/Back-end/getcredential.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(detail);
  }
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
                        Text(
                          detail['name'],
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Client ID: STAR3527",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xff222831),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Personal Details",
                                style: TextStyle(
                                    color: Color(0xffEEEEEE), fontSize: 17),
                              ),
                              SizedBox(height: 5,),
                              ListTile(
                                leading: Icon(Icons.phone,color: Color(0xffEEEEEE),),
                                title: Text(
                                  detail['phone'],
                                  style: TextStyle(fontSize: 20,color: Color(0xffEEEEEE)),
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.email_outlined,color: Color(0xffEEEEEE)),
                                title: Text(
                                  detail['email'],
                                  style: TextStyle(fontSize: 20,color: Color(0xffEEEEEE)),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, top: 5),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const Text(
                    'Your Portfolio',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Stock Market',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("Invested Value ₹50,750"),
                        trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 17),
                                  text: 'Current value :  ',
                                  children: [
                                    TextSpan(
                                        style: TextStyle( fontSize: 17),
                                        text: "₹65000"),
                                  ],
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                                      text: 'ROI : ',
                                      children: [
                                        TextSpan(
                                            style: TextStyle(),
                                            text: "₹15,250"),
                                      ])),
                            ]),
                      ),
                      ListTile(
                        title: Text(
                          'Mutual Fund',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("SIP ₹2000/month"),
                        trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 17),
                                  text: 'Current value : ',
                                  children: [
                                    TextSpan(
                                        style: TextStyle( fontSize: 17),
                                        text: "₹65000"),
                                  ],
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                                      text: 'Total Invested : ',
                                      children: [
                                        TextSpan(
                                            style: TextStyle(),
                                            text: "₹50000"),
                                      ])),
                            ]),
                      ),
                      ListTile(
                        title: Text(
                          'Real Estate',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("partner of 5 property",style: TextStyle(),),
                        trailing: Text(
                          "Total Invested : 70,20,152",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),



                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10, left: 6, right: 6),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.4, color: Colors.black38),
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/login');
                      },
                      child: ListTile(
                        leading: Icon(Icons.logout_outlined),
                        title: Text(
                          "Log Out",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )),

              ],
            ),
          ),
        ));
  }
}