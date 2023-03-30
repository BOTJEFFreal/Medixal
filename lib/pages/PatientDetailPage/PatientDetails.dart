import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/neumorphic_text_field_container.dart';
import '../../components/rectangular_input_field.dart';
import '../../components/rectangular_tile.dart';
import 'checkUp.dart';
import 'medicalInfo.dart';

class PateintDetails extends StatefulWidget {
  const PateintDetails({Key? key}) : super(key: key);

  @override
  State<PateintDetails> createState() => _PateintDetailsState();
}



class _PateintDetailsState extends State<PateintDetails> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      medicalInfo(),
      checkUp(),
    ];
    return SafeArea(
      child: Scaffold(
        body:_children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_information,color: Colors.grey,),
              label: 'Medical Information',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_registration,color: Colors.grey),
              label: 'Check Up',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

