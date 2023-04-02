import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/widgets/homePageWidgets/tasksListWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/calorieIntakeWidget.dart';
import 'package:health_helper/widgets/homePageWidgets/mealNowWidget.dart';
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
    return ListView(
      children:[ Container(
        height: MediaQuery.of(context).size.height*2.h,
        child: Stack(
          children: [
            const TaskWidget(),
            const WaterTrackerWidget(),
            MealNowWidget(),
            //const PlanExecutionLevel(),
            CalorieIntakeWidget(),
            ReminerOfWaterWidget(),
             ReminerOfSleepWidget(),
          ],
        ),
      ),
    ]
    );
  }
}
