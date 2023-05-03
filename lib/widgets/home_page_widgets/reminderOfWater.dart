import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class ReminerOfWaterWidget extends StatelessWidget {
  final _countOfWater = 8;

  const ReminerOfWaterWidget({super.key});
  @override
  Widget build(BuildContext context) {
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
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text(
          'Дневная норма стаканов воды:',
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text('$_countOfWater💧',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold))
      ]),
    );
  }
}
