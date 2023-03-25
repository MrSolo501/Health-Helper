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




class Recipesfornormallunch extends StatelessWidget {

  final _dishes=[Dishes( cooktime: '1 час 30 мин',
    title: 'Уха, мясное блюдо из запечённой птицы с гарниром из овощей',
    image: 'https://img.povar.ru/main-micro/3c/e3/c3/93/uha_s_ovoshami-575658.JPG',)
    ,Dishes( cooktime: '2 часа',
      title: 'Филе индейки, отварная картошка',
      image: 'https://static.1000.menu/img/content/29617/file-indeiki-s-kartoshkoi_1542191329_11_max.jpg',)
    ,Dishes( cooktime: '30 мин',
      title: 'Куриная грудка, гречка с грибами',
      image: 'https://s1.eda.ru/StaticContent/Photos/110810174633/150615125434/p_O.jpg',)
    ,Dishes( cooktime: '1 час 20 мин',
      title: 'Плов из свинины',
      image: 'https://cdn.vkuso.ru/uploads/ovsyanaya-kasha-s-izyumom-k-zavtraku-844.jpg',)
    ,Dishes( cooktime: '50',
      title: 'Гуляш из филе курицы, гарнир из крупы',
      image: '',)
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