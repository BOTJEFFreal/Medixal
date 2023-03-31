import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rectangular_tile1.dart';
import '../../components/rectangular_tile2.dart';
import '../../components/rectangular_tile3.dart';

class medicalInfo extends StatefulWidget {
  const medicalInfo({Key? key}) : super(key: key);

  @override
  State<medicalInfo> createState() => _medicalInfoState();
}

class _medicalInfoState extends State<medicalInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 50,
              ),
              Text("Patient Details",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.grey),),
            ],
          ),
          SizedBox(height: 20,),
          Container(width:double.infinity,child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                    SizedBox(width: 6,),
                    Text("Rajesh Kumar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("Gender:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                        SizedBox(width: 6,),
                        Text("M",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Physically Handicapped:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                        SizedBox(width: 6,),
                        Text("Yes",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        //Physically Handicapped
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Date of Birth:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                    SizedBox(width: 6,),
                    Text("21th-March-2022",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ],
                ),
              ],
            ),
          ),decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(12))
          ),),
          SizedBox(height: 12,),
          // Text("Patient's Allergy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey)),
          // SizedBox(height: 8,),
          Text("Patient's History",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey)),
          SizedBox(height: 8,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RectangularTile(),
                  RectangularTile2(),
                  RectangularTile3(),
                  SizedBox(height: 4,),
                ],
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
    );
  }
}
