
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Services/auth.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:true,
        backgroundColor: const Color.fromRGBO(242, 232, 207, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.0.h),
          child: Column(
            children: <Widget>[
              Text(
                'Health Helper',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 60.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Организуйте свой образ жизни',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(56, 102, 65, 1),
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0.h),
              Text(
                'Следи за своим рационом питания, занимайся спортом, веди здоровый образ жизни быстро и просто с нашим приложениемю',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(56, 102, 65, 1),
                  fontSize: 15.0.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 10.0.h),
              SizedBox(
                height: 10.h,
                width: 80.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                   
                    //padding: EdgeInsets.symmetric(vertical: 25.0.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                    ),
                  ),
                  child: Text(
                    'Начнём!',
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
      ),
    );
  }
}
