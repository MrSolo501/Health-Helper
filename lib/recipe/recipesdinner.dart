import 'package:flutter/material.dart';
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




class Recipesdinner extends StatelessWidget {

  final _dishes=[Dishes( cooktime: '1 час',
    title: 'Лёгкое рыбное блюдо без гарнира и салат',
    image: 'assets/images/ужин1.jpg',)
    ,Dishes( cooktime: '25 мин',
      title: 'Салат с тунцом консервированным',
      image: 'assets/images/ужин2.jpg',)
    ,Dishes( cooktime: '40 мин',
      title: 'Рецепт гречки с грибами',
      image: 'assets/images/ужин3.jpg',)
    ,Dishes( cooktime: '20 мин',
      title: 'Паста с сыром',
      image: 'assets/images/ужин4.jpg',)
    ,Dishes( cooktime: '1 час',
      title: 'грудка индейки отварная, гречка',
      image: 'assets/images/ужин5.jpg',)
    ,];
  @override
  Widget build(BuildContext context) {
    if(you.IWB>25){
      _dishes.clear();
      _dishes.addAll([Dishes( cooktime: '30 мин',
        title: 'Рыба на пару',
        image: 'assets/images/ужин1(fat).jpg',)
        ,Dishes( cooktime: '45 мин',
          title: 'Печень говядины',
          image: 'assets/images/ужин2(fat).jpg',)
        ,Dishes( cooktime: '30 мин',
          title: 'Мясная запеканка',
          image: 'assets/images/ужин3(fat).jpg',)
        ,Dishes( cooktime: '45 мин',
          title: 'Удон с курицей и овощами',
          image: 'assets/images/ужин4(fat).jpg',)
        ,Dishes( cooktime: '40 мин',
          title: 'Тушёная капуста с грибами ',
          image: 'assets/images/ужин5(fat).jpg',)
        ,]);
    }else if (you.IWB<18){
      _dishes.clear();
      _dishes.addAll([Dishes( cooktime: '1 час ',
        title: 'Куриное филе, отварной картофель',
        image: 'assets/images/обед1.jpg',)
        ,Dishes( cooktime: '20 мин',
          title: 'Треска с рисом с добавлением сливочного соуса',
          image: 'assets/images/обед2.jpg',)
        ,Dishes( cooktime: '40 мин',
          title: 'Рецепт пюре из картошки с запеченным минтаем',
          image: 'assets/images/обед3.jpg',)
        ,Dishes( cooktime: '20 минут',
          title: 'Яичная лапша со свининой и овощами',
          image: 'assets/images/обед4.jpg',)
        ,Dishes( cooktime: '50 мин',
          title: 'мясо по французски из свинины с помидорами',
          image: 'assets/images/обед5.jpg',)
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
                  height: 180,
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