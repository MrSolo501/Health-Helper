import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/pages/diet_pages/breakfast_page.dart';
import 'package:health_helper/pages/diet_pages/dinner_page.dart';
import 'package:health_helper/pages/diet_pages/lunch_page.dart';

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

    return Positioned(
      top: MediaQuery.of(context).size.height / 0.85.h,
      left: MediaQuery.of(context).size.width / 12.w,
      child: UnconstrainedBox(
        child: Container(
          width: MediaQuery.of(context).size.width /1.08.w,
          height: MediaQuery.of(context).size.height/5.h,
          padding:  EdgeInsets.all(16.sp),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20.0.sp),
            color: Colors.white,
          ),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Текущее время: ',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                      text: _formattedDate,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              Text('Следующий прием пищи: ${_nextMeal}',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
              SizedBox(height: 6.h),
              ElevatedButton(
                onPressed: () {
                  if (_nextMeal == "Утро") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => breakfastScreen()));
                  } else {
                    if (_nextMeal == "Обед") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => lunchScreen()));
                    }
                    if (_nextMeal == "Ужин") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => dinnerScreen()));
                    }
                  }
                },
                child: Text('Перейти на следующий прием пищи', style: TextStyle(fontSize: 13.sp),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
