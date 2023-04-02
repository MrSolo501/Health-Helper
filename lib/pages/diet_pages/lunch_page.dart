import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/recipe/recipeslunch.dart';



class lunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
          title: Text(
            'Обед',
            style: TextStyle(fontSize: 25.sp,color:Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(106, 153, 78, 1)),
        body:Recipeslunch()
    );
  }
}
