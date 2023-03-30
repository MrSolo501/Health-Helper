import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/pages/diet_pages/breakfast_page.dart';
import 'diet_pages/breakfast_page.dart';
import 'diet_pages/lunch_page.dart';
import 'diet_pages/dinner_page.dart';

final List<String> entries = <String>['Завтрак', 'Обед', 'Ужин'];
final List<int> colorCodes = <int>[600, 600, 600];

class EdaScreenWidget extends StatelessWidget {
  const EdaScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => breakfastScreen()));
            },
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: 200.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightGreen),
              child: Center(
                  child: Text(
                'Завтрак',
                style: TextStyle(fontSize: 40.h,color: Colors.white),
              )),
            )),
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => lunchScreen()));
            },
            child: Container(
          margin: const EdgeInsets.all(10.0),
          height: 200.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.lightGreen),
          child: Center(
              child: Text(
            'Обед',
            style: TextStyle(fontSize: 40.h,color:Colors.white),
          )),
        )),
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dinnerScreen()));
            },
            child: Container(
          margin: const EdgeInsets.all(10.0),
          height: 200.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.lightGreen),
          child: Center(
              child: Text(
            'Ужин',
            style: TextStyle(fontSize: 40.h,color:Colors.white),
          )),
        )),
      ],
    );
  }
}
