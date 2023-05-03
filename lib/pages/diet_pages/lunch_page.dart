import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipeslunch.dart';
import 'package:sizer/sizer.dart';



class lunchScreen extends StatelessWidget {
  const lunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
          title: Text(
            'Обед',
            style: TextStyle(fontSize: 25.sp,color:Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(106, 153, 78, 1)),
        body: Recipeslunch()
    );
  }
}
