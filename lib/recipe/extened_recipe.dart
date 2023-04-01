import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionRecipe extends StatelessWidget {
  final String image;
  final String title;
  final String ingridients;
  final String Stepscooking;
  final String cooktime;

  DescriptionRecipe(
      {required this.image,
      required this.title,
      required this.ingridients,
      required this.Stepscooking,
      required this.cooktime});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: MediaQuery.of(context).size.width,
          height: 180.h,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.multiply),
                  image: AssetImage(image),
                  fit: BoxFit.cover)),
        ),
        Center(child:Text(
          title,style:TextStyle(color:Colors.black,fontSize: 18)
        )),
        SizedBox(height: 12.h),
        Text('Ингридиенты'
            ,style:TextStyle(color:Colors.black,fontSize: 18)
        ),
        Center(
            child: Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 12),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Ингридиенты:',
                style: TextStyle(color: Colors.black, fontSize: 18))),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(ingridients)),
        Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Время приготовления:',
                  style: TextStyle(color: Colors.black, fontSize: 18))),
          Text(
            cooktime,
            style: TextStyle(fontSize: 18),
          )
        ]),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Шаги приготовления:',
                style: TextStyle(color: Colors.black, fontSize: 18))),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                Stepscooking))
      ],
    );
  }
}
