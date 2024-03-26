import 'package:flutter/material.dart';

class Real extends StatefulWidget {
  const Real({super.key});

  @override
  State<Real> createState() => _RealState();
}

class _RealState extends State<Real> {
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
                          "Toal Real Estate Investment ",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "₹70,50,370",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 25,
                        ),
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
                                Text(
                                  "Total Property owned",
                                  style: TextStyle(
                                      color: Color(0xffEEEEEE), fontSize: 17),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      color: Color(0xffEEEEEE), fontSize: 17),
                                ),
                              ],
                            ),
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
                    'Your Properties',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(bottom: 8),
                          decoration: const BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(color: Color(0xff76ABAE)),
                                child: Image.network(
                                    'https://foyr.com/learn/wp-content/uploads/2019/03/Villa_Mistral-Singapore.jpg',
                                    fit: BoxFit.cover),
                              ),
                              ListTile(
                                title: Text("5 BHK Villa",style: TextStyle(fontSize: 20),),
                                subtitle: Text("at bapunagar , Ahmedabad"),
                                trailing: Text("10% Stake",style: TextStyle(fontSize: 17),),
                              )
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(bottom: 8),
                          decoration: const BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(color: Color(0xff76ABAE)),
                                child: Image.network(
                                    'https://img.freepik.com/premium-photo/colorful-agriculture-farmland-spring-aerial-drone-view_643825-2117.jpg',
                                    fit: BoxFit.cover),
                              ),
                              ListTile(
                                title: Text("3 Acre Farm",style: TextStyle(fontSize: 20),),
                                subtitle: Text("at Mahesana"),
                                trailing: Text("22% Stake",style: TextStyle(fontSize: 17),),
                              )
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(bottom: 8),
                          decoration: const BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(color: Color(0xff76ABAE)),
                                child: Image.network(
                                    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380569812.jpg?k=0755f95e7361587eb7b9c9b79ea62d51b8dcef7cba1e3987daecd59e26daa42b&o=&hp=1',
                                    fit: BoxFit.cover),
                              ),
                              ListTile(
                                title: Text("15 Floor Resort",style: TextStyle(fontSize: 20),),
                                subtitle: Text("Near Gandhinagar"),
                                trailing: Text("1.02% Stake",style: TextStyle(fontSize: 17),),
                              )
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(bottom: 8),
                          decoration: const BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(color: Color(0xff76ABAE)),
                                child: Image.network(
                                    'https://anuhar.com/blog/wp-content/uploads/2022/11/apartment-in-Hyderabad.png',
                                    fit: BoxFit.cover),
                              ),
                              ListTile(
                                title: Text("4th floor flat",style: TextStyle(fontSize: 20),),
                                subtitle: Text("at nadiad , Gujrat"),
                                trailing: Text("60% Stake",style: TextStyle(fontSize: 17),),
                              )
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(bottom: 8),
                          decoration: const BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(color: Color(0xff76ABAE)),
                                child: Image.network(
                                    'https://blog.myrsa.in/wp-content/uploads/2020/05/Blog-3.jpg',
                                    fit: BoxFit.cover),
                              ),
                              ListTile(
                                title: Text("1st floor shop",style: TextStyle(fontSize: 20),),
                                subtitle: Text("at anand centre mall , Anand"),
                                trailing: Text("100% Stake",style: TextStyle(fontSize: 17),),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
