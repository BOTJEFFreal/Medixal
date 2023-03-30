import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final function;
  final buttonName;
  const IntroButton({Key? key, required this.function, required this.buttonName,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => function),
        );
      },

      child: AnimatedContainer(
        child: Center(child: Text(buttonName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey[800]),)),
        height: 75,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ), duration: Duration(milliseconds: 200),
      ));
}
}
