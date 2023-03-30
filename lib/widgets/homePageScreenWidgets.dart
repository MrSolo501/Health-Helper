import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/widgets/homePageWidgets/tasksListWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/calorieIntakeWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/dateWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/planExecutionLevel.dart';
import 'package:health_helper/widgets/homePageWidgets/waterTrackerWidget.dart';

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
    return ListView(children: [
      Column(
        children:  [
           SizedBox(
            height: 20.h,
          ),
          const TaskWidget(),
           SizedBox(
            height: 20.h,
          ),
           SizedBox(
            width: 20.h,
          ),
          const WaterTrackerWidget(),
           SizedBox(
            height: 20.h,
          ),
          const PlanExecutionLevel(),
           SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(
                width: 30.h,
              ),
              const CalorieIntakeWidget(),
              SizedBox(width: 20.w,),
              const ReminerOfWaterWidget(),
            ],
          ),
           SizedBox(height: 3.h,),
          const ReminerOfSleepWidget(),
        ],
      ),

    ]);
  }
}
