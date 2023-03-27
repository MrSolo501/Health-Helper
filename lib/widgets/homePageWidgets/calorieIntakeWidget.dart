import 'package:flutter/material.dart';
import 'dart:math' as math;

class CalorieIntakeWidget extends StatefulWidget {
  const CalorieIntakeWidget({super.key});

  @override
  State<CalorieIntakeWidget> createState() => _CalorieIntakeWidgetState();
}

class _CalorieIntakeWidgetState extends State<CalorieIntakeWidget> {
  var toogle = true;
  final _calorieIntake = 1700;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2.45,
      left: 30,
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            setState(() {
              toogle = !toogle;
            });
          },
          child: Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.lightBlue.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 11,
                ),
              ],
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                const TextSpan(
                  text: 'Норма калорий на сегодня: ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                    text: '$_calorieIntake🔥',
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
