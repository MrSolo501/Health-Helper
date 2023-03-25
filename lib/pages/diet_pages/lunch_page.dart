import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipesfornormallunch.dart';



class lunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
          title: Text(
            'Обед',
            style: TextStyle(fontSize: 25,color:Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(106, 153, 78, 1)),
        body:Recipesfornormallunch()
    );
  }
}
