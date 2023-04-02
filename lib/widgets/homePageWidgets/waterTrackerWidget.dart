import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaterTrackerWidget extends StatefulWidget {
  const WaterTrackerWidget({super.key});

  @override
  State<WaterTrackerWidget> createState() => _WaterTrackerWidgetState();
}

class _WaterTrackerWidgetState extends State<WaterTrackerWidget> {
  var toogle = true;
  var _water = 0;
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 1.22.h,
      left: MediaQuery.of(context).size.width / 12.w,
      child: UnconstrainedBox(
        child: Container(
          padding:
               EdgeInsets.symmetric(vertical: 13.h, horizontal: 12.w),
          width: 320.w,
          height: 140.h,
          decoration: BoxDecoration(
             border: Border.all(
                    color:Colors.green,
                    width: 1.w,
                  ),
            borderRadius: BorderRadius.circular(20.0.sp),
            color: Colors.white,
            
          ),
          child: Column(
            
            children: [
              RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                  children: [
                     TextSpan(
                      text: 'За сегодня ты выпил:',
                      style: TextStyle(
                      fontSize: 19.sp, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    TextSpan(
                      
                      text:  ' $_water🥛',
                      style:  TextStyle(color: Colors.blue,fontSize: 30.sp,fontWeight: FontWeight.bold)
                    )
                  ]
                
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    toogle = !toogle;
                    _water++;
                  });
                },
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all( Size(240.w, 49.h)),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.lightBlue.shade100),
                ),
                child:  Text("+1",
                    style: TextStyle(color: Colors.blue, fontSize: 26.sp)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
