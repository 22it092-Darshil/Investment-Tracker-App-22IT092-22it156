import 'package:flutter/material.dart';

class Real extends StatefulWidget {
  const Real({super.key});

  @override
  State<Real> createState() => _RealState();
}

class _RealState extends State<Real> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {

        return Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Hi!',
              style: TextStyle(fontSize: 10,color: Colors.deepPurple),
            ),
          ),
        );
      },
    );
  }
}
