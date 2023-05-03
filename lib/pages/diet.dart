
import 'package:flutter/material.dart';
import 'package:health_helper/pages/diet_pages/breakfast_page.dart';
import 'package:sizer/sizer.dart';
import 'diet_pages/breakfast_page.dart';
import 'diet_pages/lunch_page.dart';
import 'diet_pages/dinner_page.dart';

List<Widget> scr=[breakfastScreen(),lunchScreen(),dinnerScreen()];
List<String> names=['Завтрак','Обед','Ужин'];

class EdaScreenWidget extends StatelessWidget {
  const EdaScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 2.h),
      child: ListView.builder(
          itemCount: 3,
          itemExtent: 25.h,
          itemBuilder: (BuildContext context, int index) {
            final _names = names[index];
            final _scr = scr[index];
            return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => _scr));
                },
                child: Container(
                  margin:  EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.w),
                  //height: 200.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: Colors.lightGreen),
                  child: Center(
                      child: Text(
                        _names,
                        style: TextStyle(fontSize: 35.sp, color: Colors.white),
                      )),
                )
            );
          }
      ),
    );
  }
}
