import 'package:flutter/material.dart';
import 'dart:math' as math;

DateTime _now = DateTime.now();
String _formattedDate = "${_now.day}.${_now.month}.${_now.year}";
class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  var toogle = true;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height/14, 
      left: 270,
      
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            setState(() {
              toogle = !toogle;
            });
          },
          child: Container(
            width: 130,
            height: 110,
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
            text:  TextSpan(
              children: [
                const TextSpan(
                  text: 'Текущая дата: ',
                  style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                
                TextSpan(
                  
                  text: _formattedDate,
                  style: const TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold)
                )
              ]
            
            ),
              ),
          ),
        ),
      ),
    );
  }
}