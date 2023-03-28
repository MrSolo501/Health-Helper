import 'package:flutter/material.dart';
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
          const SizedBox(
            height: 20,
          ),
          const TaskWidget(),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 20,
          ),
          const WaterTrackerWidget(),
          const SizedBox(
            height: 20,
          ),
          const PlanExecutionLevel(),
          const SizedBox(height: 20,),
          Row(
            children:const [
              SizedBox(
                width: 30,
              ),
              CalorieIntakeWidget(),
              SizedBox(width: 50,),
              ReminerOfWaterWidget(),
            ],
          ),
          const SizedBox(height: 3,),
          const ReminerOfSleepWidget(),
        ],
      ),

    ]);
  }
}
