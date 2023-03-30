import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';


class ReminerOfSleepWidget extends StatefulWidget {
  const ReminerOfSleepWidget({super.key});

  @override
  State<ReminerOfSleepWidget> createState() => _ReminerOfSleepWidgetState();
}

class _ReminerOfSleepWidgetState extends State<ReminerOfSleepWidget> {
  final String _sleepTime = "23:00";
  final String _wakeUpTime = "07:40";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      height: 170.h,
      width: 350.w,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(11),
            width: 150.w,
            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 10.h,
                ),
                 Text(
                  'Время спать:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w400),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Text(
                  _sleepTime,
                  style:  TextStyle(
                      fontSize: 35.h, fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                 SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
           SizedBox(
            width: 20.w,
          ),
          Container(
            
            padding:  EdgeInsets.all(11.w),
            width: 150.w,
            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 10.h,
                ),
                 Text(
                  'Подъем:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.h,
                      fontWeight: FontWeight.w400),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Text(
                  _wakeUpTime,
                  style:  TextStyle(
                      fontSize: 35.h, fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                 SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
