import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class HeadText extends StatelessWidget {
  const HeadText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: appPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.05),
          Text('Welcome',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),),
          Text('Please Add New Patient',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}
