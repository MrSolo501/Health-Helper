import 'package:flutter/material.dart';
import 'package:health_helper/recipe/recipe.dart';

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
      body:Recipe(title:'Овощная паста из кабачков',cooktime: '40',Urlcode: 'https://grandkulinar.ru/uploads/posts/2019-03/1553165797_ovoshchnaya-pasta-iz-kabachkov-s-celnozernovoj-lapshoj.jpg',)
    );
  }
}
