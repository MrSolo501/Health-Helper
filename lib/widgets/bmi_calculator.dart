import 'dart:math';

class BMICalculator {
  static double calculateBMI(double weight, double height, int age) {
    double bmi = weight / pow(height / 100, 2);
    return double.parse(bmi.toStringAsFixed(1));
  }
}
