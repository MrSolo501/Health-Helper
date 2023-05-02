import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:health_helper/pages/diet_pages/breakfast_page.dart';
import 'package:health_helper/pages/diet_pages/dinner_page.dart';
import 'package:health_helper/pages/diet_pages/lunch_page.dart';
import 'package:sizer/sizer.dart';

DateTime _now = DateTime.now();
String _formattedDate = "${_now.hour}:${_now.minute}";

class MealNowWidget extends StatelessWidget {
  var toogle = true;
  late String _nextMeal;

  @override
  Widget build(BuildContext context) {
    if (_now.hour > 19 || ((_now.hour > -1) && (_now.hour < 8))) {
      _nextMeal = "Утро";
    } else {
      if (_now.hour >= 8 && _now.hour < 14) {
        _nextMeal = "Обед";
      }
      if (_now.hour >= 14 && _now.hour < 19) {
        _nextMeal = "Ужин";
      }
    }

    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.circular(20.0.sp),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Следующий прием пищи: ',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            '${_nextMeal}',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 1.h),
          ElevatedButton(
            onPressed: () {
              if (_nextMeal == "Утро") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => breakfastScreen()));
              } else {
                if (_nextMeal == "Обед") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => lunchScreen()));
                }
                if (_nextMeal == "Ужин") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => dinnerScreen()));
                }
              }
            },
            child: Text(
              'Перейти на следующий прием пищи',
              style: TextStyle(fontSize: 13.sp),
            ),
          )
        ],
      ),
    );
  }
}
