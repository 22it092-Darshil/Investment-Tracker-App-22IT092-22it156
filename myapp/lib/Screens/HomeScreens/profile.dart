import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Star Investment")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 6, right: 6),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.4, color: Colors.black38),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Firstname lastname",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Client Id :- star123",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, left: 6, right: 6),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.4, color: Colors.black38),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal details",
                    style: TextStyle(fontSize: 15),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      "9876543210",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text(
                      "demo123@mail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 6, right: 6),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.4, color: Colors.black38),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Invested details")),
                  ListTile(
                    title: Text(
                      'Stock market',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Invested Value ₹10000"),
                    trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Current value  ₹15000",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          ),
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                                  text: 'ROI ',
                                  children: [
                                TextSpan(
                                    style: TextStyle(color: Colors.green),
                                    text: "+5000 (+50.00%)"),
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
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 17),
                              text: 'Current value : ',
                              children: [
                                TextSpan(
                                    style: TextStyle(color: Colors.green , fontSize: 17),
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
                                    style: TextStyle(color: Colors.green),
                                    text: "₹50000"),
                              ])),
                        ]),
                  ),
                  ListTile(
                    title: Text(
                      'Real Estate',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("partner of 3 property",style: TextStyle(),),
                    trailing: Text(
                      "Total Invested : 90000",
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
    );
  }
}
