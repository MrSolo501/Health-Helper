import 'package:flutter/material.dart';
import 'dart:math' as math;

class WaterTrackerWidget extends StatefulWidget {
  const WaterTrackerWidget({super.key});

  @override
  State<WaterTrackerWidget> createState() => _WaterTrackerWidgetState();
}

class _WaterTrackerWidgetState extends State<WaterTrackerWidget> {
  var toogle = true;
  var _water = 0;
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 25,
      left: -150,
      right: 0,
      child: UnconstrainedBox(
        child: Container(
          padding:
              const EdgeInsets.symmetric(vertical: 13, horizontal: 12),
          width: 230,
          height: 160,
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
          child: Column(
            
            children: [
              RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                  children: [
                    const TextSpan(
                      text: 'За сегодня ты выпил:',
                      style: TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                    TextSpan(
                      
                      text:  ' $_water💧',
                      style: const TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)
                    )
                  ]
                
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    toogle = !toogle;
                    _water++;
                  });
                },
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size(186, 49)),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.lightBlue.shade100),
                ),
                child: const Text("+1",
                    style: TextStyle(color: Colors.blue, fontSize: 26)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
