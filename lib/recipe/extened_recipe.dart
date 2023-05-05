import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DescriptionRecipe extends StatelessWidget {
  final String image;
  final String title;
  final String ingridients;
  final String Stepscooking;
  final String cooktime;

  const DescriptionRecipe(
      {super.key,
      required this.image,
      required this.title,
      required this.ingridients,
      required this.Stepscooking,
      required this.cooktime});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 230, 232, 232),
      padding: EdgeInsets.all(8.0.sp),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            width: MediaQuery.of(context).size.width,
            height: 25.h,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.sp),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.05), BlendMode.multiply),
                    image: AssetImage(image),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 2.h,),
          Center(
              child: Text(title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 3.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                'Ингредиенты:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              )),
          SizedBox(height: 1.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
              child: Text(
                ingridients,
                style: TextStyle(fontSize: 12.sp),
              )),
          //SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Время приготовления:',
                      style: TextStyle(color: Colors.black, fontSize: 18.sp,fontWeight:FontWeight.w500,fontStyle: FontStyle.italic)),
                  Text(
                    cooktime,
                    style: TextStyle(fontSize: 18.sp,fontWeight:FontWeight.w500,fontStyle: FontStyle.italic),
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 3.w,
              vertical: 2.h,
            ),
            child: Text(
              'Шаги приготовления:',
              style: TextStyle(
                color: Colors.black,
               fontSize: 18.sp,fontWeight:FontWeight.w500,fontStyle: FontStyle.italic
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: Text(Stepscooking,style: TextStyle(fontSize: 12.sp,wordSpacing: 1.6,),),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
