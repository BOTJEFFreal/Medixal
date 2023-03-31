import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MedicineTile1 extends StatefulWidget {
  const MedicineTile1({Key? key}) : super(key: key);

  @override
  State<MedicineTile1> createState() => _MedicineTile1State();
}

class _MedicineTile1State extends State<MedicineTile1> {
  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: appPadding / 2),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  lightPrimary,
                  darkPrimary,
                ]
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: const Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ]
        ),
        child: GestureDetector(
          onTap: () async {
            setState(() {print(isClicked);
            isClicked = !isClicked;
            print(isClicked);});
          },
          child: Container(
            height: 100,
            child: Padding(padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("MedicineName: Dolo650 ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54)),
                        Text("Quantity: 20 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.black54)),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text("From: Mumbai To: Vikramgad ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54)),
                  ],
                ),
              ),

            ),
          ),
        )
    );
  }}

