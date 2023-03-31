import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rectangular_tile1.dart';
import '../../components/rectangular_tile2.dart';
import '../../components/rectangular_tile3.dart';
import '../components/Medicine/MedicineTile.dart';

class requestList extends StatefulWidget {
  const requestList({Key? key}) : super(key: key);

  @override
  State<requestList> createState() => _medicalInfoState();
}

class _medicalInfoState extends State<requestList> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 50,
                ),
                Text("Active Orders",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.grey),),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MedicineTile1(),
                      SizedBox(height: 2,),
                      MedicineTile1(),
                      SizedBox(height: 2,),
                    ],
                  ),
                ),
              ),
            )
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (BuildContext context, int index) {
            //         return Padding(
            //           padding: const EdgeInsets.only(bottom: 8),
            //           child: RectangularTile(),
            //         );
            //       }),
            // ),
          ],

        ),
      ),

    );
  }
}