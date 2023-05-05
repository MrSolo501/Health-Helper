import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Text("Текущее время: ${ (DateTime.now().hour<10)? "0${DateTime.now().hour}":"${DateTime.now().hour}"}:${ (DateTime.now().minute<10)? "0${DateTime.now().minute}":"${DateTime.now().minute}"}",style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold), );
      },
    );
  }
}
