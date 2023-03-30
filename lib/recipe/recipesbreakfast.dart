import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/recipe/extened_recipe.dart';


class you{
  static const int IWB=27;
}

class Dishes{
    final String cooktime;
    final String title;
    final String image;

  Dishes({required this.cooktime,required this.title,required this.image});

}




class Recipesbreakfast extends StatelessWidget {

  final _dishes=[Dishes( cooktime: '7 мин',
      title: 'нежирный творог с фруктами',
      image: 'assets/images/завтрак1.jpg',)
    ,Dishes( cooktime: '40 мин',
      title: 'Каша на молоке с маслом, отварное яйцо',
      image: 'assets/images/завтрак2.jpg',)
    ,Dishes( cooktime: '10 мин',
      title: 'яичница глазунья с помидорами и колбасой',
      image: 'assets/images/завтрак3.jpg',)
    ,Dishes( cooktime: '30 мин',
      title: 'молочная каша с овсяными хлопьями и изюмом, кофе с молоком',
      image: 'assets/images/завтрак4.jpg',)
    ,Dishes( cooktime: '1 час',
      title: 'запеканка творожная с мукой',
      image: 'assets/images/завтрак5.jpg',)
    ,];
  @override
  Widget build(BuildContext context) {
    if(you.IWB>25){
      _dishes.clear();
      _dishes.addAll([Dishes( cooktime: '30 мин',
        title: 'Сырники из творога с мукой',
        image: 'assets/images/завтрак1(fat).jpg',)
        ,Dishes( cooktime: '35 мин',
          title: 'Овсяная каша с грушей ',
          image: 'assets/images/завтрак2(fat).jpg',)
        ,Dishes( cooktime: '20 мин',
          title: 'Гречневая каша с молоком',
          image: 'assets/images/завтрак3(fat).jpg',)
        ,Dishes( cooktime: '25 мин',
          title: 'Рисовая каша на воде',
          image: 'assets/images/завтрак4(fat).jpg',)
        ,Dishes( cooktime: '20 мин',
          title: 'Молочная лапша',
          image: 'assets/images/завтрак5(fat).jpg',)
        ,]);
    }else if (you.IWB<18){
      _dishes.clear();
      _dishes.addAll([Dishes( cooktime: '20 мин',
        title: 'Омлет с сыром и ветчиной',
        image: 'assets/images/завтрак1(low).jpg',)
        ,Dishes( cooktime: '10 мин',
          title: 'Овсяная каша с орехами и бананом',
          image: 'assets/images/завтрак2(low).jpg',)
        ,Dishes( cooktime: '1 час',
          title: 'Рисовая каша с бананами и мускатным орехом',
          image: 'assets/images/завтрак3(low).jpg',)
        ,Dishes( cooktime: '40 мин',
          title: 'гречневая каша с тушёнкой',
          image: 'assets/images/завтрак4(low).jpg',)
        ,Dishes( cooktime: '1 час',
          title: 'макароны с мясными тефтелями',
          image: 'assets/images/завтрак5(low).jpg',)
        ,]);
    }
    return ListView.builder(
        itemCount: 5,
        itemExtent: 180,
        itemBuilder: (BuildContext context,int index) {
          final dishes=_dishes[index];
          return GestureDetector(
              onTap: () {

              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 180.h,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.35),
                              BlendMode.multiply),
                          image: AssetImage(dishes.image),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.5),
                          child: Text(
                            dishes.title,
                            style: TextStyle(fontSize: 23.h, color: Colors.white),
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
                                dishes.cooktime,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          alignment: Alignment.bottomRight,
                        ),
                      )
                    ],
                  )
              )
          );
        }
    );
  }
}
