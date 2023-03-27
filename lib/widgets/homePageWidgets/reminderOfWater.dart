import 'package:flutter/material.dart';
import 'dart:math' as math;

class ReminerOfWaterWidget extends StatefulWidget {
  const ReminerOfWaterWidget({super.key});

  @override
  State<ReminerOfWaterWidget> createState() => _ReminerOfWaterWidgetState();
}

class _ReminerOfWaterWidgetState extends State<ReminerOfWaterWidget> {
  var toogle = true;
  final _countOfWater = 10;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2.35,
      left:220,
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            setState(() {
              toogle = !toogle;
            });
          },
          child: Container(
            width: 180,
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
              text: TextSpan(
                children: [
                const TextSpan(
                  
                  text: 'Дневная норма стаканов воды:',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  
                    text: '$_countOfWater🥛',
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 26,
                        fontWeight: FontWeight.bold))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
