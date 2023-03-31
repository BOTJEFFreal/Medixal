import 'package:flutter/material.dart';

import '../constants/constants.dart';
class RectangularTile extends StatefulWidget {
  const RectangularTile({Key? key}) : super(key: key);

  @override
  State<RectangularTile> createState() => _RectangularTileState();
}

class _RectangularTileState extends State<RectangularTile> {
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
          child: Padding(padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Common Cold",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black54)),
                  ],
                ),
                SizedBox(height: 5,),
                Align(alignment:Alignment.topLeft,child: const Text("Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey))),
                SizedBox(height: 5,),
                const Text("The typical symptoms of a cold include cough, runny nose, sneezing, nasal congestion, and a sore throat, sometimes accompanied by muscle ache, fatigue, headache, and loss of appetite.A sore throat is present in about 40% of cases, a cough in about 50%,and muscle ache likewise in about 50%. In adults, a fever is generally not present but it is common in infants and young children.The cough is usually mild compared to that accompanying influenza.While a cough and a fever indicate a higher likelihood of influenza in adults, a great deal of similarity exists between these two conditions.A number of the viruses that cause the common cold may also result in asymptomatic infections.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black54)),

              ],
            ),

          ),
        ),
      )
    );
  }
}
