import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';
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
                
                text1 = BMICalculator.calculateBMI(
                  double.parse(text),
                  int.parse(heightController.text),
                  int.parse(ageController.text),
                ).toString();
                print(text);
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
                text1 = BMICalculator.calculateBMI(
                  int.parse(weightController.text),
                  int.parse(text),
                  int.parse(ageController.text),
                ).toString();
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
                text1 = BMICalculator.calculateBMI(
                  int.parse(weightController.text),
                  int.parse(heightController.text),
                  int.parse(text),
                ).toString();
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
        ])
      ],
    );
  }
}
