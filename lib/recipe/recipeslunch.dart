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



class Recipeslunch extends StatelessWidget {

  List<Dishes> _dishes=[Dishes( cooktime: '1 час 30 мин',
    title: 'Уха, мясное блюдо из запечённой птицы с гарниром из овощей',
    image: 'assets/images/обед1.jpg',)
    ,Dishes( cooktime: '2 часа',
      title: 'Филе индейки, отварная картошка',
      image: 'assets/images/обед2.jpg',)
    ,Dishes( cooktime: '30 мин',
      title: 'Куриная грудка, гречка с грибами',
      image: 'assets/images/обед3.jpg',)
    ,Dishes( cooktime: '1 час 20 мин',
      title: 'Плов из свинины',
      image: 'assets/images/обед4.jpg',)
    ,Dishes( cooktime: '50 мин',
      title: 'Гуляш из филе курицы',
      image: 'assets/images/обед5.jpg',)
    ,];
  @override
  Widget build(BuildContext context) {
    if(you.IWB>25){
      _dishes.clear();
      _dishes.addAll([Dishes( cooktime: '20 мин',
        title: 'Овощной салат',
        image: 'assets/images/обед1(fat).jpg',)
        ,Dishes( cooktime: '40 минут',
          title: 'Овощное рагу',
          image: 'assets/images/обед2(fat).jpg',)
        ,Dishes( cooktime: '25 мин',
          title: 'Грибной крем суп',
          image: 'assets/images/обед3(fat).jpg',)
        ,Dishes( cooktime: '35 мин',
          title: 'Суп с фрикадельками без картофеля',
          image: 'assets/images/обед4(fat).jpg',)
        ,Dishes( cooktime: '2 часа',
          title: 'Отварная говядина, овощной бульон',
          image: 'assets/images/обед5(fat).jpg',)
        ,]);
    }else if (you.IWB<18){
      _dishes.clear();
      _dishes.addAll([Dishes( cooktime: '1 час',
        title: 'Паста с говядиной в томатном соусе, фрукты, стакан молока',
        image: 'assets/images/обед1(low).jpg',)
        ,Dishes( cooktime: '3 часа',
          title: 'Телятина с баклажанами, картошкой и другими овощами',
          image: 'assets/images/обед2(low).jpg',)
        ,Dishes( cooktime: '1 час 20 мин',
          title: 'Суп из свежей капусты с мясом',
          image: 'assets/images/обед3(low).jpg',)
        ,Dishes( cooktime: '3 часа',
          title: 'Мясная солянка',
          image: 'assets/images/обед4(low).jpg',)
        ,Dishes( cooktime: '40 мин',
          title: ' Картофельное пюре с жареной рыбой',
          image: 'assets/images/обед5(low).jpg',)
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