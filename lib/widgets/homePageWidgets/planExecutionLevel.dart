import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sizer/sizer.dart';



class PlanExecutionLevel extends StatefulWidget {
  const PlanExecutionLevel({super.key});

  @override
  State<PlanExecutionLevel> createState() => _PlanExecutionLevelState();
}

class _PlanExecutionLevelState extends State<PlanExecutionLevel> {
 
     final int _level = 90;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 0.97.h,
      left: MediaQuery.of(context).size.width / 12.w,
      child: UnconstrainedBox(
        child: TweenAnimationBuilder(
            curve: Curves.bounceInOut,
            duration: const Duration(seconds: 4),
            tween: Tween<double>(begin: 10, end: 190),
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Container(
                padding:  EdgeInsets.all(14.sp),
                width: 320.w,
                height: 122.h,
                decoration: BoxDecoration(
                   border: Border.all(
                    color:Colors.green,
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                 
                ),
                child: Column(
                  children: [
                    Text(
                      'План выполнен на: $_level%',
                      style:  TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                     SizedBox(
                      height: 30.h,
                    ),
                    Stack(children: [
                      Container(
                        height: 32.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.grey.shade200,
                        ),
                      ),
                      Container(
                        width:value,
                        height: 32.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.lightGreenAccent,
                        ),
                      )
                    ]),
                  ],
                ),
              );
            }),
      ),
    );
    
  }
  }
