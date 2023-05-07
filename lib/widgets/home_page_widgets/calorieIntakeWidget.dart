import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../pages/login_screen.dart';
import '../bmi_calculator.dart';

class CalorieIntakeWidget extends StatelessWidget {
  CalorieIntakeWidget({super.key});

  var toogle = true;

  late String _calorieIntake;

  @override
  Widget build(BuildContext context) {
   
    return FutureBuilder<double>(
        future: BMICalculator.getBMI(),
        builder: (context, snapshot) {
          double result = snapshot.data?? 0;
          if (result >= 25) {
      _calorieIntake = 'от 1 500 до 2 400';
    } else {
      if (result < 18.6) {
        _calorieIntake = 'от 2 100 до 2 600';
      } else {
        _calorieIntake = 'от 1 500 до 2 400';
      }
    }
          return Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 0.5.w,
              ),
              borderRadius: BorderRadius.circular(20.0.sp),
              color: Colors.white,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Норма калорий для тебя:',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text('$_calorieIntake🔥',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold))
            ]),
          );
        });
  }
}
