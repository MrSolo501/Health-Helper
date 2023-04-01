import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/pages/result_screen.dart';
import 'home_page.dart';
import 'package:get/get.dart';



class MyController extends GetxController {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
 final ageController = TextEditingController();
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
   final MyController myController = Get.put(MyController());
  @override
  void dispose() {
    myController.weightController.dispose();
    myController.heightController.dispose();
    myController.ageController.dispose();
    super.dispose();
  }
  

  void _login() {
    //var bmi = BmiResultScreen(weight:_weightController, height:_heightController, age:_ageController);
    if (_formKey.currentState!.validate()) {
      double weight = double.parse(myController.weightController.text);
      double height = double.parse(myController.heightController.text);
      int age = int.parse(myController.ageController.text);

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
      backgroundColor: Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
        title:  Text("Health Helper",
            style: TextStyle(
                fontSize: 25.h, color: Color.fromRGBO(255, 255, 255, 1)),
            textDirection: TextDirection.ltr),
        backgroundColor: Color.fromRGBO(106, 153, 78, 1),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              TextFormField(
                controller: myController.weightController,
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
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              TextFormField(
                controller: myController.heightController,
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
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              TextFormField(
                controller: myController.ageController,
                maxLength: 3,
                style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
                decoration: InputDecoration(
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
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.h),
              TextButton(
                onPressed: _login,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black87,
                    backgroundColor: Color.fromRGBO(106, 153, 78, 1),
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                  ),
                  child:  Text('Рассчитать ИМТ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0.h,
                    ),),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
