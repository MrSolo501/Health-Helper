import 'package:flutter/material.dart';
import 'package:health_helper/widgets/home_page_widgets/calorieIntakeWidget.dart';
import 'package:health_helper/widgets/home_page_widgets/mealNowWidget.dart';
import 'package:health_helper/widgets/home_page_widgets/waterTrackerWidget.dart';
import 'package:sizer/sizer.dart';

import '../widgets/home_page_widgets/new_task_widget/new_task_widger.dart';
import '../widgets/home_page_widgets/reminderOfWater.dart';

class HomePageScreenWidgets extends StatefulWidget {
  const HomePageScreenWidgets({super.key});

  @override
  State<HomePageScreenWidgets> createState() => _HomePageScreenWidgetsState();
}

class _HomePageScreenWidgetsState extends State<HomePageScreenWidgets> {
  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 5.w,top: 5.h,right: 5.w),
          child: Column(children: [
           // const TaskWidget(),
            ScheduleWidget(),
            const WaterTrackerWidget(),
            SizedBox(height: 5.h,),
            MealNowWidget(),
              SizedBox(height: 5.h,),
          
             //CalorieIntakeWidget(),
             SizedBox(height: 5.h,),
            const ReminerOfWaterWidget(),
            SizedBox(height: 5.h,),
            // ReminerOfSleepWidget(),
          ]),
        ),
      ),
        );
   
  }
}
