
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/pages/diet_pages/breakfast_page.dart';
import 'diet_pages/breakfast_page.dart';
import 'diet_pages/lunch_page.dart';
import 'diet_pages/dinner_page.dart';

List<Widget> scr=[breakfastScreen(),lunchScreen(),dinnerScreen()];
List<String> names=['Завтрак','Обед','Ужин'];

class EdaScreenWidget extends StatelessWidget {
  const EdaScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemExtent: 220.h,
        itemBuilder: (BuildContext context, int index) {
          final _names = names[index];
          final _scr = scr[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => _scr));
              },
              child: Container(
                margin:  EdgeInsets.all(10.0.sp),
                height: 200.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    color: Colors.lightGreen),
                child: Center(
                    child: Text(
                      _names,
                      style: TextStyle(fontSize: 40.sp, color: Colors.white),
                    )),
              )
          );
        }
    );
  }
}
