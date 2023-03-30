import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../components/MainIntroPage/PharmaMedicineList.dart';
import 'loading_circle.dart';

class PharmaPage extends StatefulWidget {
  const PharmaPage({Key? key}) : super(key: key);

  @override
  State<PharmaPage> createState() => _PharmaPageState();
}

class _PharmaPageState extends State<PharmaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: false == true
                      ? LoadingCircle()
                      :
                  ListView.builder(
                          itemCount: 2,//GoogleSheetsApi.currentTransactions.length,
                          itemBuilder: (context, index) {
                            return PharmaMedicineList(
                              PatientName:
                                  "Name",//GoogleSheetsApi.currentTransactions[index][0],
                              // Medicine: [["Medicine1",20,200],["Medicine1",20,200],["Medicine1",20,200],["Medicine1",20,200]],//GoogleSheetsApi.currentTransactions[index][1],

                            );
                          }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
