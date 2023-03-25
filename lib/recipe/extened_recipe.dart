import 'package:flutter/material.dart';

class DescriptionRecipe extends StatelessWidget {
  final String urlimage;
  final String title;
  final String ingridients;
  final String titlestepscooking;
  final List<String> Stepscooking;

  DescriptionRecipe(
      {required this.urlimage,
      required this.title,
      required this.ingridients,
      required this.titlestepscooking,
      required this.Stepscooking});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          width: MediaQuery.of(context).size.width,
          height: 180,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.35), BlendMode.multiply),
                  image: NetworkImage(urlimage),
                  fit: BoxFit.cover)),
        ),
        Center(child:Text(
          title,style:TextStyle(color:Colors.black,fontSize: 18)
        )),
        SizedBox(height: 12),
        Text('Ингридиенты'
            ,style:TextStyle(color:Colors.black,fontSize: 18)
        ),
        Text('')


      ],
    );
  }
}
