import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class USERListTile extends StatefulWidget {
  final desc;
  final name;
  final index;
  const USERListTile(
      {Key? key, required this.name, required this.index, required this.desc})
      : super(key: key);

  @override
  State<USERListTile> createState() => _USERListTileState();
}

class _USERListTileState extends State<USERListTile> {
  @override
  Widget build(BuildContext context) {
    var decoration =
        BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
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
    ]);
    var testStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[800]);
    return SafeArea(
      child: AnimatedContainer(
        decoration: decoration,
        duration: Duration(milliseconds: 200),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5,
                        children: [
                          Text(
                            "Name: Rajesh Kumar",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[800]),
                          ),
                        ],
                      )
                    ],
                  ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Eytazox",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black54),
                          ),
                          SizedBox(width: 7,),
                          Text(
                            "100ml",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black54),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "₹500",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black54),
                          ),
                        ],

                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total Amount:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "₹500",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold,color: Colors.green),
                          ),
                        ],
                      ),
                      SizedBox(height: 16,),
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green[800]!,
                                    offset: const Offset(0, 0),
                                    // blurRadius: 15,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Center(
                                child: Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white70),
                            )),
                          )),
                    ],
                  )
                ],
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}
