import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../pages/login_screen.dart';
import '../bmi_calculator.dart';

class CalorieIntakeWidget extends StatelessWidget {
  var toogle = true;
  final MyController myController = Get.find();

  late String _calorieIntake;

  CalorieIntakeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final _result = BMICalculator.calculateBMI(
        double.parse(myController.weightController.text),
        double.parse(myController.heightController.text),
        int.parse(myController.ageController.text));
    if (_result >= 25) {
      _calorieIntake = 'от 1 500 до 2 400';
    } else {
      if (_result < 18.6) {
        _calorieIntake = 'от 2 100 до 2 600';
      } else {
        _calorieIntake = 'от 1 500 до 2 400';
      }
    }
    return Positioned(
      top: MediaQuery.of(context).size.height / 0.82.h,
      left: MediaQuery.of(context).size.width / 12.w,
      
      child: UnconstrainedBox(
        child: Container(
          
          width: 150.w,
          height: 200.h,
          padding:  EdgeInsets.all(16.sp),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20.0.sp),
            color: Colors.white,
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: 'Норма калорий для тебя ',
                style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              TextSpan(
                  text: '$_calorieIntake🔥',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold))
            ]),
          ),
        ),
      ),
    );
  }
}
