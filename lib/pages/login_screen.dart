import 'package:flutter/material.dart';
import 'package:health_helper/Services/database.dart';
import 'package:health_helper/pages/result_screen.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController weightController;

  late TextEditingController heightController;

  late TextEditingController ageController;

  @override
  void initState() {
    weightController = TextEditingController();
    heightController = TextEditingController();
    ageController = TextEditingController();
    super.initState();
  }

  void _login() {
    //var bmi = BmiResultScreen(weight:_weightController, height:_heightController, age:_ageController);
    if (_formKey.currentState!.validate()) {
      int weight = int.parse(weightController.text);
      int height = int.parse(heightController.text);
      int age = int.parse(ageController.text);

      BMICalculator.setParametrsForBMI(weight, height, age);
      //DatabaseService().Addage(age);
      /*DatabaseService().Addweight(weight);
      DatabaseService().Addheight(height);*/

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => BmiResultScreen(
            weight: weight,
            height: height,
            age: age,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
        title: Text("Health Helper",
            style: TextStyle(
                fontSize: 25.sp, color: const Color.fromRGBO(255, 255, 255, 1)),
            textDirection: TextDirection.ltr),
        backgroundColor: const Color.fromRGBO(106, 153, 78, 1),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            TextFormField(
              controller: weightController,
              maxLength: 3,
              style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(56, 102, 65, 1)),
                ),
                labelText: 'Вес (кг)',
                labelStyle: TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите ваш вес';
                } else if (double.parse(value) <= 0) {
                  return 'Некорректный ввод данных';
                }
                return null;
              },
            ),
            SizedBox(height: 5.h),
            TextFormField(
              controller: heightController,
              maxLength: 3,
              style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(56, 102, 65, 1)),
                ),
                labelStyle: TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
                labelText: 'Рост (см)',
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите ваш рост';
                } else if (double.parse(value) <= 0) {
                  return 'Некорректный ввод данных';
                }
                return null;
              },
            ),
            SizedBox(height: 5.h),
            TextFormField(
              controller: ageController,
              maxLength: 3,
              style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(56, 102, 65, 1)),
                ),
                labelStyle: TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
                labelText: 'Возраст',
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите ваш возраст';
                }  else if (double.parse(value) <= 0) {
                  return 'Некорректный ввод данных';
                }
                return null;
              },
            ),
            SizedBox(height: 10.h),
            SizedBox(
                height: 10.h,
                width: 80.w,
                child: ElevatedButton(
                  onPressed: _login,
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black87,
                      backgroundColor: const Color.fromRGBO(106, 153, 78, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  child: Text(
                    'Рассчитать ИМТ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0.sp,
                    ),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
