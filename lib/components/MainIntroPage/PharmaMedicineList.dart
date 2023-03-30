import 'package:flutter/material.dart';

import 'PatientMedicalList.dart';

class PharmaMedicineList extends StatelessWidget {
  final String PatientName;
  //final List Medicine;

  PharmaMedicineList({
    required this.PatientName,
    // required this.Medicine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.grey[100],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[500]),
                        child: Center(
                          child: Icon(
                            Icons.attach_money_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(PatientName,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          )),
                    ],
                  ),

                ],
              ),
              Expanded(
                child:ListView.builder(
                    itemCount: 2,//GoogleSheetsApi.currentTransactions.length,
                    itemBuilder: (context, index) {
                      return PatientMedicineList(
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
    );
  }
}
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 12.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10),
//         child: Container(
//           padding: EdgeInsets.all(15),
//           color: Colors.grey[100],
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle, color: Colors.grey[500]),
//                     child: Center(
//                       child: Icon(
//                         Icons.account_circle,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(PatientName,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey[700],
//                       )),
//                 ],
//               ),
//               // Expanded(
//               //   child: ListView.builder(
//               //       itemCount: 1,//GoogleSheetsApi.currentTransactions.length,
//               //       itemBuilder: (context, index) {
//               //         return PatientMedicineList(
//               //           MedicineName:"Medicine1",
//               //           MedicineQty:"20",
//               //           MedicinePrice:"200"
//               //         );
//               //       }),
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }