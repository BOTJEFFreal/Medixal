import 'package:flutter/material.dart';
import 'package:medixal/pages/GeneralMedicinePage/GeneralMedicinePage.dart';
import 'package:medixal/pages/LandingPage.dart';
import 'package:medixal/pages/Login/loginPage.dart';
import 'package:medixal/pages/Medicinelist/Medicinelist.dart';
import 'package:medixal/pages/PatientDetailPage/PatientDetails.dart';
import 'package:medixal/pages/PatientSignUp/PatientSignUpPage.dart';
import 'package:medixal/pages/SelectRole.dart';
import 'package:medixal/pages/requestList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Medicinelist(),
    );
  }
}
