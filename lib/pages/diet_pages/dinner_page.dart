import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipesdinner.dart';
import 'package:sizer/sizer.dart';

class dinnerScreen extends StatelessWidget {
  const dinnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
          title: Text('Ужин',
            style: TextStyle(fontSize: 25.sp,color:Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(106, 153, 78, 1)),
      body: Recipesdinner()
    );
  }
}
