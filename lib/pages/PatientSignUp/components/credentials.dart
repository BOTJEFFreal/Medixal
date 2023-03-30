import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../../../API/sheetAPI.dart';
import '../../../components/neumorphic_dropdown.dart';
import '../../../components/rectangular_button.dart';
import '../../../components/rectangular_desc_field.dart';
import '../../../components/rectangular_input_field.dart';
import '../../../constants/constants.dart';



class Credentials extends StatefulWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  final TextEditingController UserController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController FatherController = TextEditingController();
  final TextEditingController MotherController = TextEditingController();
  final TextEditingController DoBController = TextEditingController();
  final TextEditingController AadharController = TextEditingController();
  final TextEditingController AddressController = TextEditingController();
  final TextEditingController ContactController = TextEditingController();

  String? GenderdropDownValue;
  String? dropDownValue;

  @override
  void initState() {
    super.initState();
    UserController.addListener(() => setState(() {}));
    EmailController.addListener(() => setState(() {}));
    FatherController.addListener(() => setState(() {}));
    MotherController.addListener(() => setState(() {}));
    DoBController.addListener(() => setState(() {}));
    AadharController.addListener(() => setState(() {}));
    AddressController.addListener(() => setState(() {}));
    ContactController.addListener(() => setState(() {}));
  }

  // void _post() {
  //   GoogleSheetsApi.insert(UserController.text);
  //   UserController.clear();
  //   setState(() {});
  // }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
            controller: UserController,
            hintText: 'Patient\'s Name',
            icon: Icons.person,
            obscureText: false,
          ),
          // SizedBox(
          //   height: 4,
          // ),
          RectangularInputField(
            controller: FatherController,
            hintText: 'Father\'s Name',
            icon: CupertinoIcons.person_2_alt,
            obscureText: false,
          ),
          // SizedBox(
          //   height: 4,
          // ),
          RectangularInputField(
            controller: MotherController,
            hintText: 'Mother\'s Name',
            icon: CupertinoIcons.person_2_alt,
            obscureText: false,
          ),
          SizedBox(
            height: 8,
          ),
          DecoratedBox(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
              child: DropdownButton<String>(
                value: GenderdropDownValue,
                hint: Text("Gender"),
                elevation: 16,
                onChanged: (var GenderValue) {
                  setState(() {
                    GenderdropDownValue = GenderValue;
                  });
                },
                underline: SizedBox(),
                items: ListofGender.map<DropdownMenuItem<String>>((String Gendervalue) {
                  return DropdownMenuItem<String>(
                    value: Gendervalue,
                    child: Text(Gendervalue),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          RectangularInputField(
            controller: DoBController,
            hintText: 'Date of Birth',
            icon: Icons.date_range,
            obscureText: false,
          ),
          // SizedBox(
          //   height: 12 / 2,
          // ),
          RectangularInputField(
            controller: AadharController,
            hintText: 'Aadhar Number',
            icon: CupertinoIcons.number,
            obscureText: false,
          ),
          // SizedBox(
          //   height: 12 / 2,
          // ),
          RectangularInputField(
            controller: AddressController,
            hintText: 'Address',
            icon: CupertinoIcons.location,
            obscureText: false,
          ),
          RectangularInputField(
            controller: ContactController,
            hintText: 'Contact Number',
            icon: CupertinoIcons.phone,
            obscureText: false,
          ),
          SizedBox(
            height: 8,
          ),
          DecoratedBox(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
              child: DropdownButton<String>(
                value: dropDownValue,
                hint: Text("Physically Handicapped"),
                elevation: 16,
                onChanged: (var Value) {
                  setState(() {
                    dropDownValue = Value;
                  });
                },
                underline: SizedBox(),
                items: isDisabled.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 12 / 2,
          ),
          RectangularButton(text: 'Register the Patient', width:double.infinity,fontSize:20,press: (){
            print('USERNAME: ${UserController.text}');
            print('EMAIL: ${EmailController.text}');
            print('DropDown: ${dropDownValue}');
            Navigator.pop(context);

            // _post();
            // ADDguru(UserController.text,EmailController.text,DescController.text,dropDownValue);
            // GETgurulist(dropDownValue);
          })
        ],
      ),
    );
  }
}
