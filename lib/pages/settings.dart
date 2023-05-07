import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:health_helper/Services/auth.dart';
import 'package:health_helper/pages/landing.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'login_screen.dart';

class SettingsScreenWidget extends StatefulWidget {
  SettingsScreenWidget({Key? key}) : super(key: key);

  @override
  State<SettingsScreenWidget> createState() => _SettingsScreenWidgetState();
}

class _SettingsScreenWidgetState extends State<SettingsScreenWidget> {
  void _onChanged(String text) {
    if (kDebugMode) {
      print('_onChanged: $text');
    }
  }

  final MyController myControllerSettings = Get.put(MyController());
  final MyController myController = Get.find();

  late TextEditingController weightController;

  late TextEditingController heightController;

  late TextEditingController ageController;
  late String text1;

  @override
  void initState() {
    weightController =
        TextEditingController(text: myController.weightController.text);
    heightController =
        TextEditingController(text: myController.heightController.text);
    ageController =
        TextEditingController(text: myController.ageController.text);
    text1 = BMICalculator.calculateBMI(
      int.parse(weightController.text),
      int.parse(heightController.text),
      int.parse(ageController.text),
    ).toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
          child: TextField(
            controller: heightController,
            onChanged: (String text) {
              setState(() {
                if (text != "") {
                  text1 = BMICalculator.calculateBMI(
                    double.parse(text),
                    int.parse(heightController.text),
                    int.parse(ageController.text),
                  ).toString();
                  BMICalculator.setBMI(
                    BMICalculator.calculateBMI(
                      double.parse(text),
                      int.parse(heightController.text),
                      int.parse(ageController.text),
                    ),
                  );
                } else {
                  heightController.text = "0";
                }
              });
            },
            maxLength: 3,
            //initialValue: heightController.text,

            keyboardType: TextInputType.number,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w,
                      color: const Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w,
                      color: const Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Ваш текущий рост:',
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            maxLength: 3,
            onChanged: (String text) {
              setState(() {
                if (text != "") {
                  text1 = BMICalculator.calculateBMI(
                    int.parse(weightController.text),
                    int.parse(text),
                    int.parse(ageController.text),
                  ).toString();
                  BMICalculator.setBMI(BMICalculator.calculateBMI(
                    int.parse(weightController.text),
                    int.parse(text),
                    int.parse(ageController.text),
                  ));
                } else {
                  weightController.text = "0";
                }
              });
            },
            keyboardType: TextInputType.number,
            //initialValue: weightController.text,
            controller: weightController,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w,
                      color: const Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: const BorderSide(
                      width: 1.0, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Ваш текущий вес:',
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: TextField(
            maxLength: 2,
            onChanged: (String text) {
              setState(() {
                if (text != "") {
                  text1 = BMICalculator.calculateBMI(
                    int.parse(weightController.text),
                    int.parse(heightController.text),
                    int.parse(text),
                  ).toString();
                  BMICalculator.setBMI(BMICalculator.calculateBMI(
                    int.parse(weightController.text),
                    int.parse(heightController.text),
                    int.parse(text),
                  ));
                } else {
                  ageController.text = "0";
                }
              });
            },
            keyboardType: TextInputType.number,
            //initialValue: ageController.text,
            controller: ageController,
            //readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w,
                      color: const Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w,
                      color: const Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Ваш текущий возраст:',
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Column(children: <Widget>[
          const Center(
            child: Text(
              'Ваш Индекс Массы Тела:',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Center(
              child: Text(
            text1,
            style: const TextStyle(color: Colors.black, fontSize: 23),
          ))
        ]),
        SizedBox(
          height: 20.h,
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                SizedBox(width: 5.w),
                TextButton(
                  onPressed: () async {
                    AuthService().logOut();
                    SharedPreferences preferences =
                        await SharedPreferences.getInstance();
                    await preferences.clear();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                  },
                  child: const Text(
                    'Выйти',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

class MyControllerSettings extends GetxController {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final ageController = TextEditingController();
}
