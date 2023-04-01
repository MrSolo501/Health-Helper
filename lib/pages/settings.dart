import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';

import 'login_screen.dart';

class SettingsScreenWidget extends StatelessWidget {
  SettingsScreenWidget({Key? key}) : super(key: key);

  void _onChanged(String text) {
    if (kDebugMode) {
      print('_onChanged: $text');
    }
  }

  final MyController myController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
          child: TextFormField(
            onChanged: _onChanged,
            maxLength: 3,
            initialValue: myController.heightController.text,
            readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 2.0.w, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 3.0.w, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш рост',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextFormField(
            maxLength: 3,
            initialValue: myController.weightController.text,
            readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 2.0.w, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 3.0, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш вес',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: TextFormField(
            maxLength: 2,
            initialValue: myController.ageController.text,
            readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 2.0.w, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 3.0.w, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш возраст',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          height: 200.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white.withOpacity(0)),
          child: Column(children: <Widget>[
            Center(
                child: Text(
              'Ваш Индекс Массы Тела:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              BMICalculator.calculateBMI(
                      double.parse(myController.weightController.text),
                      double.parse(myController.heightController.text),
                      int.parse(myController.ageController.text))
                  .toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ))
          ]),
        )
      ],
    );
  }
}
