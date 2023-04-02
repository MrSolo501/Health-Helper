import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/recipe/extened_recipe.dart';

class recipes extends StatelessWidget {
  final String image;
  final String title;
  final String ingridients;
  final String Stepscooking;
  final String cooktime;

  recipes(
      {required this.image,
      required this.title,
      required this.ingridients,
      required this.Stepscooking,
      required this.cooktime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:  Text(
              'Рецепт к блюду',
              style: TextStyle(fontSize: 25.sp, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(106, 153, 78, 1)),
        body: DescriptionRecipe(
          image: image,
          title: title,
          ingridients: ingridients,
          Stepscooking: Stepscooking,
          cooktime: cooktime,
        ));
  }
}
