import 'package:flutter/material.dart';

import 'dart:math' as math;

/*DateTime _now = DateTime.now();
 String _currentTime = "${_now.hour}:${_now.minute}";*/
class ReminerOfSleepWidget extends StatefulWidget {
  const ReminerOfSleepWidget({super.key});

  @override
  State<ReminerOfSleepWidget> createState() => _ReminerOfSleepWidgetState();
}

class _ReminerOfSleepWidgetState extends State<ReminerOfSleepWidget> {
  bool _isExpanded = false;
  final String _sleepTime = "23:00";

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 1.61,
      left: 30,
      child: UnconstrainedBox(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          height: 140,
          width: 354,
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
          child: Stack(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Напоминание о сне',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Спать в $_sleepTime',
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(250, 40)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue.shade100),
                  ),
                  child: const Text('Окей!',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
