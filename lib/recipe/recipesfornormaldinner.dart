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




class Recipesfornormaldinner extends StatelessWidget {

  final _dishes=[Dishes( cooktime: '1 час',
    title: 'Лёгкое рыбное блюдо без гарнира и салат',
    image: 'https://static.1000.menu/res/640/img/content-v2/4f/70/22734/treska-po-polski-na-rybnom-bulone-s-kornem-seldereya_1615366998_11_max.jpg',)
    ,Dishes( cooktime: '25 мин',
      title: 'Салат с тунцом консервированным',
      image: 'https://static.1000.menu/img/content-v2/bc/14/42904/salat-s-tuncom-konservirovannym-klassicheskii_1615712147_10_max.jpg',)
    ,Dishes( cooktime: '40 мин',
      title: 'Рецепт гречки с грибами',
      image: 'https://img1.russianfood.com/dycontent/images_upl/495/big_494596.jpg',)
    ,Dishes( cooktime: '20 мин',
      title: 'Паста с сыром',
      image: 'https://www.djurenko.com/wp-content/uploads/2017/01/spaghetti-formaggio_08.jpg',)
    ,Dishes( cooktime: '1 час',
      title: 'грудка индейки отварная, гречка',
      image: 'https://static.1000.menu/img/content/32386/indeika-otvarnaya_1549829993_6_max.jpg',)
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