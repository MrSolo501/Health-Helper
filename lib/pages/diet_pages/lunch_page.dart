import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipe.dart';

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
        body:Recipe(title:'Овощной суп с лапшой',cooktime: '30',Urlcode: 'https://grandkulinar.ru/uploads/posts/2019-03/1552400969_ovoshchnoj-sup-s-lapshoj.jpg',)
    );
  }
}
