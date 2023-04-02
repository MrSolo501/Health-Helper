import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';


class ReminerOfSleepWidget extends StatelessWidget {
  
  final String _sleepTime = "23:00";
  final String _wakeUpTime = "07:40";

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 0.58.h,
      left: MediaQuery.of(context).size.width / 12.w,
      child: Container(
       
        height: MediaQuery.of(context).size.height / 5.h,
        width: MediaQuery.of(context).size.width/1.w,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20.0.sp),
        ),
        child: Row(
          children: [
            Container(
              padding:  EdgeInsets.all(11.sp),
              width: 150.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.green,
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(20.0.sp),
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
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                  ),
                   SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    _sleepTime,
                    style:  TextStyle(
                        fontSize: 35.sp, fontWeight: FontWeight.bold),
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
              
              padding:  EdgeInsets.all(11.sp),
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
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                  ),
                   SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    _wakeUpTime,
                    style:  TextStyle(
                        fontSize: 35.sp, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
