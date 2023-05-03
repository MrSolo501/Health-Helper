import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';


class ReminerOfWaterWidget extends StatelessWidget {
  final _countOfWater = 8;

  const ReminerOfWaterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 0.7.h,
      left: MediaQuery.of(context).size.width / 1.7.w,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.3.w,
        height: MediaQuery.of(context).size.height/3.8.h,
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
              text: 'Дневная норма стаканов воды:',
              style: TextStyle(
                  fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextSpan(
                text: '$_countOfWater💧',
                style:  TextStyle(
                    color: Colors.blue,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold))
          ]),
        ),
      ),
    );
  }
}
