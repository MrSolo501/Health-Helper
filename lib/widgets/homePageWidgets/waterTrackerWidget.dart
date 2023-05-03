import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

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
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
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
                  text: 'За сегодня ты выпил:',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),),
                      TextSpan( text:  ' $_water🥛',
                      style:  TextStyle(color: Colors.green,fontSize: 20.sp,fontWeight: FontWeight.bold)
                    )
            ]),
          ),
          SizedBox(
            height: 1.h,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                toogle = !toogle;
                _water++;
              });
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 10.w)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlue.shade100),
            ),
            child: Text("+1",
                style: TextStyle(color: Colors.blue, fontSize: 20.sp)),
          ),
        ],
      ),
    );
  }
}
