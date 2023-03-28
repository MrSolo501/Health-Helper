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
    return InkWell(
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
           border: Border.all(
                color:Colors.green,
                width: 1,
              ),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          
        ),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
            const TextSpan(
              
              text: 'Дневная норма стаканов воды:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextSpan(
              
                text: '$_countOfWater',
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.bold))
          ]),
        ),
      ),
    );
  }
}
