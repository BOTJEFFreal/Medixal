import 'package:flutter/material.dart';

import '../constants/constants.dart';

class RectangularTile3 extends StatefulWidget {
  const RectangularTile3({Key? key}) : super(key: key);

  @override
  State<RectangularTile3> createState() => _RectangularTileState();
}

class _RectangularTileState extends State<RectangularTile3> {
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
                ]),
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
            ]),
        child: GestureDetector(
          onTap: () async {
            setState(() {
              print(isClicked);
              isClicked = !isClicked;
              print(isClicked);
            });
          },
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Influenza",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.black54)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: const Text("Description",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey))),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                      "Influenza A viruses are further classified into subtypes according to the combinations of the hemagglutinin (HA) and the neuraminidase (NA), the proteins on the surface of the virus",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.black54)),
                ],
              ),
            ),
          ),
        ));
  }
}
