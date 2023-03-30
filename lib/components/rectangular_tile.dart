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
                const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black54)),

              ],
            ),

          ),
        ),
      )
    );
  }
}
