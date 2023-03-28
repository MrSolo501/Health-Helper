import 'package:flutter/material.dart';
import 'dart:math' as math;



class PlanExecutionLevel extends StatefulWidget {
  const PlanExecutionLevel({super.key});

  @override
  State<PlanExecutionLevel> createState() => _PlanExecutionLevelState();
}

class _PlanExecutionLevelState extends State<PlanExecutionLevel> {
 
     final int _level = 90;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 4.1,
      left: 70,
      child: UnconstrainedBox(
        child: TweenAnimationBuilder(
            curve: Curves.bounceInOut,
            duration: const Duration(seconds: 4),
            tween: Tween<double>(begin: 10, end: 190),
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Container(
                padding: const EdgeInsets.all(14),
                width: 350,
                height: 122,
                decoration: BoxDecoration(
                   border: Border.all(
                    color:Colors.green,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                 
                ),
                child: Column(
                  children: [
                    Text(
                      'План выполнен на: $_level%',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(children: [
                      Container(
                        height: 32,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                      ),
                      Container(
                        width:value,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightGreenAccent,
                        ),
                      )
                    ]),
                  ],
                ),
              );
            }),
      ),
    );
    
  }
  }
