import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkUp extends StatefulWidget {
  const checkUp({Key? key}) : super(key: key);

  @override
  State<checkUp> createState() => _checkUpState();
}

class _checkUpState extends State<checkUp> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[100],
          child: Center(
              child: const Text(
            "General Medicine",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          )),
        ),
        Container(
            padding: const EdgeInsets.all(8),
            color: Colors.orangeAccent[100],
            child: Center(
                child: const Text(
              'Optometry',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ))),
        Container(
            padding: const EdgeInsets.all(8),
            color: Colors.red[100],
            child: Center(
                child: const Text(
              'Orthopedics',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ))),
        Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blueAccent[100],
            child: Center(
                child: const Text(
              'ENT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ))),
        Container(
            padding: const EdgeInsets.all(8),
            color: Colors.yellowAccent[100],
            child: Center(
                child: const Text(
              'Alternative Medicine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ))),
        Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[600],
            child: Center(
                child: const Text(
              'Dermatology',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ))),
        Container(
            padding: const EdgeInsets.all(8),
            color: Colors.pinkAccent[100],
            child: Center(
                child: const Text(
                  'Radiology',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ))),
      ],
    );
  }
}
