import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'components/credentials.dart';
import 'components/head_text.dart';


class GeneralMedicinePage extends StatelessWidget {
  const GeneralMedicinePage({Key? key}) : super(key: key);

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
              ]
          )
      ),
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
                      width: 80,
                    ),
                    Text("Optometry",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.grey),),
                  ],
                ),
                Credentials(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
