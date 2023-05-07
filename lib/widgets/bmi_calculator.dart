import 'dart:math';

import 'package:health_helper/Services/database.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BMICalculator {
  static double calculateBMI(num weight, num height, int age) {
    double bmi = weight / pow(height / 100, 2);

    return double.parse(bmi.toStringAsFixed(1));
  }

  static Future<void> setBMI(double bmi) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('imt', double.parse(bmi.toStringAsFixed(1)));

    //await DatabaseService().AddBMI(bmi);
  }
   static Future<void> setParametrsForBMI(int weight, int height, int age ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('weight',weight);
    prefs.setInt('height', height);
    prefs.setInt('age', age);
   
  }
  
   static Future<double> getBMI() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final double? itm = prefs.getDouble('imt');
    return itm??0;
  }

}
