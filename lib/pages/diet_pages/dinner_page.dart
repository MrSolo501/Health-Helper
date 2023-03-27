import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipesdinner.dart';

class dinnerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Ужин',
            style: TextStyle(fontSize: 25,color:Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(106, 153, 78, 1)),
      body:Recipesdinner()
    );
  }
}
