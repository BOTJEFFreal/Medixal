import 'package:flutter/material.dart';

import '../constants/constants.dart';
class RectangularTile2 extends StatefulWidget {
  const RectangularTile2({Key? key}) : super(key: key);

  @override
  State<RectangularTile2> createState() => _RectangularTileState();
}

class _RectangularTileState extends State<RectangularTile2> {
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
                    Text("Diarrhea ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black54)),
                  ],
                ),
                SizedBox(height: 5,),
                Align(alignment:Alignment.topLeft,child: const Text("Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey))),
                SizedBox(height: 5,),
                const Text("loose, watery and possibly more-frequent bowel movements — is a common problem. It may be present alone or be associated with other symptoms, such as nausea, vomiting, abdominal pain or weight loss. Luckily, diarrhea is usually short-lived, lasting no more than a few days. ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black54)),

              ],
            ),

          ),
        ),
      )
    );
  }
}
