import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipe.dart';


class breakfastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Завтрак',
            style: TextStyle(fontSize: 25,color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(106, 153, 78, 1)),
      body: Recipe(title:'Горячая яблочная каша',cooktime: '30',Urlcode: 'https://grandkulinar.ru/uploads/posts/2019-02/1550495538_goryachaya-yablochnaya-kasha-dieta-whole30.jpg',)
    );
  }
}
