import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
          margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
          width: MediaQuery.of(context).size.width,
          height: 30.h,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.05), BlendMode.multiply),
                  image: AssetImage(image),
                  fit: BoxFit.cover)),
        ),
        Center(
            child: Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 1.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text('Ингредиенты:',
                style: TextStyle(color: Colors.black, fontSize: 18.sp))),
        SizedBox(height: 3.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(ingridients)),
        SizedBox(height: 13.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Время приготовления:',
                style: TextStyle(color: Colors.black, fontSize: 18.sp)),
            Text(
              cooktime,
              style: TextStyle(fontSize: 18.sp),
            )
          ]),
        ),
        SizedBox(height: 5.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Text('Шаги приготовления:',
                style: TextStyle(color: Colors.black, fontSize: 18.sp))),
        SizedBox(height: 3.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Text(Stepscooking),),
            SizedBox(height: 10.h,)
      ],
    );
  }
}
