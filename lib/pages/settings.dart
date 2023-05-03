import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';
import 'package:sizer/sizer.dart';

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
              //readOnly: true,
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w, color: const Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w, color: const Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Ваш текущий рост:',
              labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextFormField(
            maxLength: 3,
              keyboardType: TextInputType.number,
            initialValue: myController.weightController.text,
            //readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w, color: const Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: const BorderSide(
                      width: 1.0, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Ваш текущий вес:',
              labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: TextFormField(
            maxLength: 2,
             keyboardType: TextInputType.number,
            initialValue: myController.ageController.text,
            //readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 1.0.w, color: const Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                  borderSide: BorderSide(
                      width: 1.0.w, color: const Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Ваш текущий возраст:',
              labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),
            ),
          ),
        ),
        SizedBox(height: 5.h,),
        Column(children: <Widget>[
          const Center(
              child: Text(
            'Ваш Индекс Массы Тела:',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25),
          )),
          Center(
              child: Text(
            BMICalculator.calculateBMI(
                    double.parse(myController.weightController.text),
                    double.parse(myController.heightController.text),
                    int.parse(myController.ageController.text))
                .toString(),
            style: const TextStyle(
                color: Colors.black,
                fontSize: 23),
          ))
        ])
      ],
    );
  }
}
