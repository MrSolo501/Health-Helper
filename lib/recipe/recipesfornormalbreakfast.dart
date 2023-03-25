import 'package:flutter/material.dart';
import 'package:health_helper/recipe/extened_recipe.dart';


class you{
  static const int IWB=20;
}

class Dishes{
    final String cooktime;
    final String title;
    final String image;

  Dishes({required this.cooktime,required this.title,required this.image});

}




class Recipesfornormalbreakfast extends StatelessWidget {

  final _dishes=[Dishes( cooktime: '7 мин',
      title: 'нежирный творог с фруктами',
      image: 'https://www.yournutrition.ru/images/recipes/644/photo370.jpg',)
    ,Dishes( cooktime: '40 мин',
      title: 'Каша на молоке с маслом, отварное яйцо',
      image: 'https://img1.russianfood.com/dycontent/images_upl/386/big_385505.jpg',)
    ,Dishes( cooktime: '10 мин',
      title: 'яичница глазунья с помидорами и колбасой',
      image: 'https://static.1000.menu/img/content-v2/d5/b1/13823/yaichnica-s-pomidorami-i-kolbasoi_1636613159_5_max.jpg',)
    ,Dishes( cooktime: '30 мин',
      title: 'молочная каша с овсяными хлопьями и изюмом, кофе с молоком',
      image: 'https://cdn.vkuso.ru/uploads/ovsyanaya-kasha-s-izyumom-k-zavtraku-844.jpg',)
    ,Dishes( cooktime: '1 час',
      title: 'запеканка творожная с мукой',
      image: 'https://static.1000.menu/img/content-v2/2d/79/40585/tvorojnaya-zapekanka-s-mukoi-v-duxovke_1573417377_8_max.jpg',)
    ,];
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: 5,
        itemExtent: 180,
        itemBuilder: (BuildContext context,int index) {
          final dishes=_dishes[index];
          return GestureDetector(
              onTap: () {
                //Navigator.push(context,)
                    //MaterialPageRoute(builder: (context) =>
                        //DescriptionRecipe(
                          //urlimage: 'https://grandkulinar.ru/uploads/posts/2019-02/1550495538_goryachaya-yablochnaya-kasha-dieta-whole30.jpg',
                          //title: 'Горячая яблочная каша',
                          //ingridients: '6 яблок Ханикрисп (примерно 0,7 кг.)',
                          //titlestepscooking: '',)));
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.35),
                              BlendMode.multiply),
                          image: NetworkImage(dishes.image),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.5),
                          child: Text(
                            dishes.title,
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
