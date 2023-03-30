import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          margin: EdgeInsets.symmetric(horizontal: 22.w, vertical: 10.h),
          width: MediaQuery.of(context).size.width,
          height: 180.h,
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
        SizedBox(height: 12.h),
        Text('Ингридиенты'
            ,style:TextStyle(color:Colors.black,fontSize: 18)
        ),
        Text('')


      ],
    );
  }
}
