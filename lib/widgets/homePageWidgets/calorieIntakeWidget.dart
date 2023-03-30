import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalorieIntakeWidget extends StatefulWidget {
  const CalorieIntakeWidget({super.key});

  @override
  State<CalorieIntakeWidget> createState() => _CalorieIntakeWidgetState();
}

class _CalorieIntakeWidgetState extends State<CalorieIntakeWidget> {
  var toogle = true;
  final _calorieIntake = 1700;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2.45,
      left: 30,
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            setState(() {
              toogle = !toogle;
            });
          },
          child: Container(
            width: 150.w,
            height: 150.h,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
               border: Border.all(
                    color:Colors.green,
                    width: 1,
                  ),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                 TextSpan(
                  text: 'Норма калорий на сегодня: ',
                  style: TextStyle(
                      fontSize: 20.h,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                    text: '$_calorieIntake🔥',
                    style:  TextStyle(
                        color: Colors.red,
                        fontSize: 30.h,
                        fontWeight: FontWeight.bold))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
