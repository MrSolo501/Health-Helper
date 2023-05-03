import 'package:flutter/material.dart';
import 'package:health_helper/widgets/homePageWidgets/tasksListWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/calorieIntakeWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/mealNowWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/planExecutionLevel.dart';
import 'package:health_helper/widgets/homePageWidgets/waterTrackerWidget.dart';
import 'package:sizer/sizer.dart';

import 'homePageWidgets/new_task_widget.dart';
import 'homePageWidgets/reminderOfSleep.dart';
import 'homePageWidgets/reminderOfWater.dart';

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
            SizedBox(height: 10.h,),
          
            // CalorieIntakeWidget(),
            // ReminerOfWaterWidget(),
            // ReminerOfSleepWidget(),
          ]),
        ),
      ),
    );
  }
}
