import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientMedicineList extends StatelessWidget {
  // final String MedicineName;
  // final String MedicineQty;
  // final String MedicinePrice;
  final String PatientName;
  const PatientMedicineList({Key? key, required this.PatientName,
  //  required this.MedicineName, required this.MedicineQty, required this.MedicinePrice
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

        ],
      ),
    );
  }
}
