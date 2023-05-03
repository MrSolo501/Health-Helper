import 'package:flutter/material.dart';
import 'package:health_helper/pages/diet_pages/breakfast_page.dart';
import 'package:sizer/sizer.dart';
import 'diet_pages/lunch_page.dart';
import 'diet_pages/dinner_page.dart';



class EdaScreenWidget extends StatelessWidget {
   EdaScreenWidget({super.key});
List<Widget> scr1 = [const breakfastScreen(), const lunchScreen(), const dinnerScreen()];
List<String> name = ['Завтрак', 'Обед', 'Ужин'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: ListView.builder(
          itemCount: 3,
          itemExtent: 25.h,
          itemBuilder: (BuildContext context, int index) {
            final names = name[index];
            final scr = scr1[index];
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => scr));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                  //height: 200.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: Colors.lightGreen),
                  child: Center(
                      child: Text(
                    names,
                    style: TextStyle(fontSize: 35.sp, color: Colors.white),
                  )),
                ));
          }),
    );
  }
}
