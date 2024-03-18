import 'package:flutter/material.dart';
class Stocks extends StatefulWidget {
  const Stocks({super.key});

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  int currentPageIndex = 0;
  var dataName = {"40", "20", "30", "10"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Star Investment")),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('IRFC'),
            subtitle: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Avg : ',
                  children: [
                    TextSpan(text: "${index + 22} ▪ "),
                    TextSpan(text: "Qty : "),
                    TextSpan(text: "${dataName.elementAt(index)}"),
                  ]),
            ),
            trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "+172.60 (+3.21%)",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text: 'ROI ',
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.green),
                                text: "+56.89 (+33.16%)"
                            ),
                          ])),
                ]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 6,
            thickness: 2,
          );
        },
        itemCount: dataName.length,
      ),
    );
  }
}
