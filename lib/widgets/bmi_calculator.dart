import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

class BMICalculator {
  static double calculateBMI(num weight, num height, int age) {
    double bmi = weight / pow(height / 100, 2);

    return double.parse(bmi.toStringAsFixed(1));
  }

  static Future<void> setBMI(double bmi) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('imt', double.parse(bmi.toStringAsFixed(1)));
  }
  
   static Future<double> getBMI() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final double? itm = prefs.getDouble('imt');
    return itm??0;
  }

}
