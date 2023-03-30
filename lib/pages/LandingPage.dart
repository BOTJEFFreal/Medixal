import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login/loginPage.dart';
import 'SelectRole.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    bool isElevated = true;
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Select",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                setState(() {
                  isElevated = !isElevated;
                });
              },

                child: AnimatedContainer(
                  child: Center(child: Text("Doctor",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),)),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: isElevated
                          ? [
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
                      ] : null,
                  ), duration: Duration(milliseconds: 200),
                )),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SelectRole()),
                  );
                },

                child: AnimatedContainer(
                  child: Center(child: Text("Pharmacist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),)),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: isElevated
                        ? [
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
                    ] : null,
                  ), duration: Duration(milliseconds: 200),
                )),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SelectRole()),
                  );
                },

                child: AnimatedContainer(
                  child: Center(child: Text("Merchant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),)),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: isElevated
                        ? [
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
                    ] : null,
                  ), duration: Duration(milliseconds: 200),
                )),
          ],
        ),
      ),
    );
  }
}
