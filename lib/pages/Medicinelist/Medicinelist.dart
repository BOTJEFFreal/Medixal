import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/USERlist/UserListTile.dart';
import '../../components/USERlist/UserListTile2.dart';
import '../../components/USERlist/UserListTile3.dart';
import '../../components/USERlist/listBuild.dart';
import '../../constants/constants.dart';

class Medicinelist extends StatefulWidget {
  final desc;
  final rate;
  final name;
  final rating;
  final exp;
  const Medicinelist(
      {Key? key, this.desc, this.rate, this.name, this.rating, this.exp})
      : super(key: key);

  @override
  State<Medicinelist> createState() => _MedicinelistState();
}

class _MedicinelistState extends State<Medicinelist> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            lightPrimary,
            darkPrimary,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Medicine List",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,left: 8,right: 8),
                  child: USERListTile(name: null,index: null, desc: null,),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: USERListTile2(name: null,index: null, desc: null,),
                // ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,left: 8,right: 8),
                  child: USERListTile3(name: null,index: null, desc: null,),
                )
              //   Credentials(),
               ],
            ),
          ),
        ),
      ),
    );

    // return Column(
    //   children: [
    //     Row(
    //       children: [
    //         IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),
    //         SizedBox(
    //           width: 80,
    //         ),
    //         Text("Optometry",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.grey),),
    //       ],
    //     ),
    //     Container(
    //       color: Colors.grey[300],
    //       child: Padding(
    //         padding: const EdgeInsets.all(24.0),
    //         child: Expanded(
    //           child: USERList(),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
