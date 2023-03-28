import 'package:flutter/material.dart';

import 'dart:math' as math;


class ReminerOfSleepWidget extends StatefulWidget {
  const ReminerOfSleepWidget({super.key});

  @override
  State<ReminerOfSleepWidget> createState() => _ReminerOfSleepWidgetState();
}

class _ReminerOfSleepWidgetState extends State<ReminerOfSleepWidget> {
  final String _sleepTime = "23:00";
  final String _wakeUpTime = "07:40";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      height: 170,
      width: 385,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(11),
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Время спать:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  _sleepTime,
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            
            padding: const EdgeInsets.all(11),
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.green,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Подъем:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  _wakeUpTime,
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
