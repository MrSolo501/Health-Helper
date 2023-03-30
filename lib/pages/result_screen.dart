import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/pages/home_page.dart';

import '../widgets/bmi_calculator.dart';

class BmiResultScreen extends StatelessWidget {
  var weight;
  var height;
  var age;

  BmiResultScreen({required this.weight, required this.height, required this.age});

  @override
  Widget build(BuildContext context) {
    double bmiResult = BMICalculator.calculateBMI(weight, height, age);
    String getResult() {
      if (bmiResult >= 25) {
        return 'Избыточная масса тела';
      } else if (bmiResult > 18.5) {
        return 'Нормальная масса тела';
      } else {
        return 'Недостаточная масса тела';
      }
    }
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Health Helper",
            style: TextStyle(
                fontSize: 25, color: Color.fromRGBO(255, 255, 255, 1)),
            textDirection: TextDirection.ltr),
        backgroundColor: Color.fromRGBO(106, 153, 78, 1),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getResult(),
              style: TextStyle(
                color: Color.fromRGBO(56, 102, 65, 1),
                fontSize: 22.0.h,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Text(
              'Индекс массы тела: ${bmiResult.toStringAsFixed(1)}',
              style: TextStyle(
                color: Color.fromRGBO(56, 102, 65, 1),
                fontSize: 18.0.h,
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()),
                );
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Color.fromRGBO(106, 153, 78, 1),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
              ),
              child:  Text('Приступим',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0.h,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
