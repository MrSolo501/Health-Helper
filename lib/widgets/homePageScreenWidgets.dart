import 'package:flutter/material.dart';
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
    return Stack(
      children: const [
        WaterTrackerWidget(),
        DateWidget(),
        PlanExecutionLevel(),
        CalorieIntakeWidget(),
        ReminerOfWaterWidget(),
        ReminerOfSleepWidget(),
        
      ],
    );
  }
}