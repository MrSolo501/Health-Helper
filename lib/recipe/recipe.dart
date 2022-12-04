import 'package:flutter/material.dart';
import 'package:health_helper/recipe/extened_recipe.dart';

class Recipe extends StatelessWidget {
  final String title;
  final String cooktime;
  final String Urlcode;

  Recipe({
    required this.title,
    required this.cooktime,
    required this.Urlcode,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DescriptionRecipe()));
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.35), BlendMode.multiply),
                    image: NetworkImage(Urlcode),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Align(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.5),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.timer, color: Colors.white, size: 18),
                        Text(
                          cooktime,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                )
              ],
            )));
  }
}
