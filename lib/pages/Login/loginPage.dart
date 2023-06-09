import 'package:flutter/material.dart';

// import '../../API/sheetAPI.dart';
import '../../components/Login/login_button.dart';
import '../../components/Login/login_textField.dart';
import '../PatientSignUp/PatientSignUpPage.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final patientNameController = TextEditingController();
  final aadharNumberController = TextEditingController();


  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Enter Patients Details',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),
              MyTextField(
                controller: patientNameController,
                hintText: 'Patient Name',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: aadharNumberController,
                hintText: 'Aadhar Number',
                obscureText: false,
              ),

              const SizedBox(height: 20),
              // sign in button
              MyButton(
                onTap: signUserIn, text: 'Sign In',
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PatientSignUpPage()));

              },
              child: Text(
                  "Register New Patient",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),),
              )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
