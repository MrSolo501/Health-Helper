import 'package:flutter/material.dart';
import 'package:health_helper/pages/home_page.dart';
import 'package:sizer/sizer.dart';

import '../widgets/bmi_calculator.dart';

class BmiResultScreen extends StatelessWidget {
  var weight;
  var height;
  var age;

  BmiResultScreen(
      {super.key, required this.weight, required this.height, required this.age});

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
      backgroundColor: const Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Health Helper",
            style: TextStyle(
                fontSize: 20.sp, color: const Color.fromRGBO(255, 255, 255, 1)),
            textDirection: TextDirection.ltr),
        backgroundColor: const Color.fromRGBO(106, 153, 78, 1),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getResult(),
              style: TextStyle(
                color: const Color.fromRGBO(56, 102, 65, 1),
                fontSize: 22.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6.0.h,
            ),
            Text(
              'Индекс массы тела: ${bmiResult.toStringAsFixed(1)}',
              style: TextStyle(
                color: const Color.fromRGBO(56, 102, 65, 1),
                fontSize: 18.0.sp,
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            SizedBox(
              height: 10.h,
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageScreen()),
                  );
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black87,
                    backgroundColor: const Color.fromRGBO(106, 153, 78, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                    )),
                child: Text(
                  'Приступим',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
