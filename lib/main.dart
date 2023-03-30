import 'package:flutter/material.dart';
import 'package:medixal/pages/LandingPage.dart';
import 'package:medixal/pages/Login/loginPage.dart';
import 'package:medixal/pages/PatientDetailPage/PatientDetails.dart';
import 'package:medixal/pages/PatientSignUp/PatientSignUpPage.dart';
import 'package:medixal/pages/PharamaPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: PateintDetails(),
    );
  }
}
