import 'package:flutter/material.dart';
import 'package:health_helper/recipe/extened_recipe.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../pages/login_screen.dart';
import '../widgets/bmi_calculator.dart';
import 'Recipes.dart';

class Dishes {
  final String cooktime;
  final String title;
  final String image;

  Dishes({required this.cooktime, required this.title, required this.image});
}

class Recipesbreakfast extends StatelessWidget {
  //final MyController myController = Get.find();

  final _recipes = [
    const DescriptionRecipe(
      image: 'assets/images/завтрак1.jpg',
      title: 'Нежирный творог с фруктами',
      ingridients:
          'На 1 порцию:\nТворог 150 г\nЙогурт 100 г\nСахар ванильный 2 г\nБанан 50 г\nЯблоко 50 г',
      Stepscooking:
          'Высыпать творог в тарелку. Высыпать йогурт к творогу и все перемешать. Добавить ванильный сахар и так же все перемешать. Очистить банан от кожуры и нарезать на кубики или кружочки (как удобно). Помыть яблоко и очистить от кожуры. Так же нарезать на кубики. Выложить фрукты в тарелку с творогом. По желанию перемешать.',
      cooktime: '7 мин',
    ),
    const DescriptionRecipe(
      image: 'assets/images/завтрак2.jpg',
      title: 'Каша на молоке с маслом, отварное яйцо',
      ingridients:
          'На 6 порций: \nРис 150 гр\nПшено 150 гр\nВода 600 мл\nПоваренная соль 0.5 чайн.л.\nСахар 3 стол.л.\nСливочное масло 20 гр\nМолоко 300 мл',
      Stepscooking:
          'Варим сладкую кашу из риса и пшена. Крупы берем в равных пропорциях, по 150 грамм каждой, сразу же высыпаем их в кастрюлю и обязательно промываем в холодной воде. Промытую смесь круп заливаем 600 мл воды, затем кастрюлю ставим на сильный огонь.Доводим воду со смесью рисовой и пшенной крупы до кипения, перемешиваем, убавляем огонь на минимум, кастрюлю прикрываем крышкой, оставив большой зазор для выхода пара и варим в течение 25 минут. Каша должна несильно кипеть, за это время вода достаточно испарится.Далее крышку снимаем, кашу перемешиваем, добавляем пол чайной ложечки соли и 3 столовые ложки сахара, кладем кусочек сливочного масла, перемешиваем, чтобы масло растаяло.Затем вливаем в кашу 300 мл молока, снова перемешиваем, кастрюлю накрываем крышкой и даем рисово-пшенной каше потомиться еще 5 минут на самом малом огне.Рисово-пшенную кашу раскладываем в глубокие тарелки и подаем горячей на завтрак.',
      cooktime: '40 мин',
    ),
    const DescriptionRecipe(
      image: 'assets/images/завтрак3.jpg',
      title: 'Яичница глазунья с помидорами и колбасой',
      ingridients:
          'На 1 порцию:\nЯйца 2 шт.\nВареная колбаса 100 гр\nПомидоры 100 гр\nРастительное масло 20 гр\nСоль по вкусу\nСпеции сухие по вкусу',
      Stepscooking:
          'Количество и пропорции ингредиентов вы можете немного поменять по своему вкусу. Если добавить больше помидорок, то готовая яичница будет более сочная. Колбасу можно использовать любую. Разогрейте сковороду для жарки до горячего состояния. Налейте немного растительного масла и выложите подготовленную колбасу. Обжарьте её пару минут с двух сторон до появления золотистого цвета. Затем колбасу можно сдвинуть в сторону, тем самым освободив место для яиц. На свободной территории разбейте яйца. Сразу же разложите нарезанные помидоры.Если их предварительно обжарить, то они потеряют свою форму. А так они будут равномерно прогреваться вместе с яйцами. За время готовки они станут мягче, но не успеют растечься по сковороде. Яичницу немного подсолите и посыпьте специями. Готовьте яичницу на минимальном огне 4-6 минут. Белок должен полностью приготовиться на поверхности всей яичницы, но она не должна начать подгорать. Для быстроты приготовления можно накрыть сковороду крышкой. Но при этом желтки запекутся белком и станут белые. Яичница с колбасой и помидорами готова!',
      cooktime: '10 мин',
    ),
    const DescriptionRecipe(
      image: 'assets/images/завтрак4.jpg',
      title: 'Молочная каша с овсяными хлопьями и изюмом, кофе с молоком',
      ingridients:
          'На 3 порции:\nОвсяные хлопья 1 стак.\nИзюм 20 гр\nМолоко 1 стак.\nВода 2 стак.\nСоль 0.1 чайн.л.\nСахар по вкусу',
      Stepscooking:
          'Перебираем хлопья от шелухи и промываем. Наполняем кастрюлю водой и доводим ее до кипения. Солим по вкусу и высыпаем хлопья в кастрюлю, перемешиваем. Варим почти до готовности. Если хлопья обычные, на их варку уйдет 15 минут, для мелких хлопьев достаточно трех минут. Когда каша ЗАПЫХТИТ, наливаем в нее молоко и кладем изюм .Доводим до кипения, перемешиваем, закрываем крышку и сбавляем огонь. После выключаем огонь и даем нашей каше настояться. Только помните, чем дольше каша будет стоять, тем гуще она станет. Кладем ее в тарелку и заправляем сливочным маслом.',
      cooktime: '30 мин',
    ),
    const DescriptionRecipe(
      image: 'assets/images/завтрак5.jpg',
      title: 'Запеканка творожная с мукой',
      ingridients:
          'Творог 250 гр\nСметана 2 стол.л.\nПшеничная мука 2 стол.л.\nКуриные яйца 1 шт.\nСахар 2 стол.л.\nСоль 1 гр\nСливочное масло 1 стол.л.',
      Stepscooking:
          'Можно использовать любые добавки по вкусу, например, изюм, иные сухофрукты, орешки, ягоды или фрукты. В глубокую миску кладем творог. Если творог зернистый и сухой, то его нужно протереть через сито. Добавляем сахар, щепотку соли, вбиваем куриное яйцо. Блендером смешиваем ингредиенты до получения однородной смеси. Добавляем пару столовых ложек сметаны, чтобы запеканка получилась более нежной и мягкой, сметану также нужно использовать натуральную и свежую. Снова пробиваем массу блендером. Всыпаем просеянную пшеничную муку, муку нужно обязательно просеять, чтобы удалить различного рода примеси и насытить ее кислородом, что в свою очередь, сделаем запеканку более мягкой и нежной.Смешиваем ингредиенты блендером или ложкой до получения однородного по консистенции достаточно густого теста. Форму для запеканки смазываем сливочным маслом и присыпаем мукой, чтобы после выпечки запеканку было легко извлечь из формы. Творожное тесто выкладываем ложкой в форму. Духовку разогреваем до 180 градусов. Форму с заготовкой запеканки отправляем на 35 минут, но время выпечки зависит от работы духового шкафа, размера формы, поэтому нужно ориентироваться на внешние показатели запеканки, она должна сверху хорошо зарумяниться. Вынимаем запеканку из духовки и формы, даем ей немного остыть и подаем к столу. Такая запеканка вкусна как в теплом, так и в холодном виде, а подать ее можно с любыми сладкими соусами, джемом или вареньем.',
      cooktime: '1 час',
    ),
  ];

  Recipesbreakfast({super.key});

  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder<double>(
        future: BMICalculator.getBMI(),
        builder: (context, snapshot) {
          double bmi = snapshot.data ?? 0;

          if (bmi >= 25) {
            _recipes.clear();
            _recipes.addAll([
              const DescriptionRecipe(
                image: 'assets/images/завтрак1(fat).jpg',
                title: 'Сырники из творога с мукой',
                ingridients:
                    'На 4 порции: \nДЛЯ ТЕСТА:\nТворог 600 гр\nЯйца 2 шт.\nСахар 4 стол.л.\nПшеничная мука 4 стол.л.\nВанилин 1 гр\nСода пищевая 1 гр\nДЛЯ ЖАРКИ:\nРастительное масло 30 гр\nДЛЯ ПАНИРОВКИ:\nПшеничная мука 2 стол.л.',
                Stepscooking:
                    'Для приготовления сырников соедините яйца с сахаром и взболтайте их. Взбивать до пышной массы не надо, достаточно, чтобы ингредиенты смешались друг с другом.Творог для сырников используйте сухой. Если он будет влажный, то консистенция теста будет жидкая и сырники могут не получиться. Консистенция творога должна быть мелкозернистая. Для этого можно творог протереть через сито. Добавьте творог в чашу к яйцам и все перемешайте. Использовать миксер для творожного теста не рекомендую, так как за счет взбивания творожное тесто всегда становится жидким. Достаточно использовать деревянную лопатку или простой венчик и перемешивать вручную. Затем добавьте в тесто просеянную муку, соду и ванилин.Опять же, для смешивания не используйте миксер. Просто все перемешайте, чтобы тесто просто забрало в себя всю муку. Столовые ложки могут быть разного объема, да и горочка муки на этой ложке может быть разная, поэтому ориентируйтесь по консистенции теста. При необходимости количество муки можно немного увеличить. Мокрой ложкой берите немного творожного теста и обваливайте в муке. Руками сформируйте небольшой сырник. Игнорировать этот шаг не стоит. При обваливании, консистенция внешней части сырника станет гуще и, при обжаривании, создаст, как бы, оболочку сырника. Но внутри он останется более нежный и мягкий. Сковороду разогрейте до горячего состояния и налейте немного растительного масла. Затем сделайте огонь немного меньше и выложите сырники. Обжаривайте по 1-2 минуты с каждой стороны. Если их жарить на большом огне, то они снаружи начнут подгорать, а внутри не успеют пропечься. Готовые сырники выкладывайте на бумажные полотенца, чтобы удалить с них излишки масла.',
                cooktime: '30 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак2(fat).jpg',
                title: 'Овсяная каша с грушей',
                ingridients:
                    'На 2 порции: \nМолоко 2 стакана\nОвсяные хлопья 1 стакан \nВода 1 стакан \nКорица щепотка\nСоль по вкусу\nГруши «конференц» 2 штуки',
                Stepscooking:
                    'В кастрюлю насыпьте стакан овсяных хлопьев, залейте его 2 стаканами теплого молока и 1 стаканом теплой воды (можно подогреть в микроволновке). Дождитесь, пока вода и молоко закипят. Пока все закипает, помойте и почистите 1 грушу, потрите ее на терке. Когда вода с молоком закипели, добавьте 1/3 чайные ложки соли без горки, уменьшите огонь до минимума. Добавьте тертую грушу и щепотку корицы. Далее пусть каша варится на минимальном огне с закрытой крышкой около 20–25 минут, периодически кашу помешивайте. Почистите и нарежьте маленькими кусочками оставшуюся грушу, и добавьте кусочки в тарелку с кашей.',
                cooktime: '35 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак3(fat).jpg',
                title: 'Гречневая каша с молоком',
                ingridients:
                    'Продел дробленая гречка 0.5 стак.\nВода 0.5 стак.\nМолоко 500 мл\nСахар 2 стол.л.\nСоль по вкусу',
                Stepscooking:
                    'Готовится действительно очень быстро и просто. Воду довести до кипения. Крупу промыть тёплой водой. Всыпаем в кастрюльку с кипящей водой. Помешивая варить до полного впитывания крупой жидкости. Вливаем молоко. Оно должно быть горячим. Всыпаем соль, сахар. Готовим всё это 10 минут. В тарелки с кашей можно положить кусочек сливочного масла.',
                cooktime: '20 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак4(fat).jpg',
                title: 'Рисовая каша на воде',
                ingridients:
                    'На 2 порции:\nКруглый рис 150 гр\nВода 500 мл\nСливочное масло 50 гр\nСоль по вкусу',
                Stepscooking:
                    'Рис использовать круглый, а не длинный, разваристый. Рисовая каша от обычного отварного риса отличается своей структурой, она должна быть и не жидкой, и не суховатой на вкус, поэтому вместо классической пропорции: крупы 1 часть на 2-2,5 части воды, соблюдать пропорцию: 1 часть крупы на 3-3,5 части жидкости. Рис пересыпать в глубокую емкость, залить водой и промыть несколько раз, удалить шелуху, если таковая присутствует. Промытую крупу высыпать в казан, кастрюлю или сотейник с антипригарным дном. Добавить соль по вкусу. Если вы готовите сладкую кашу, то всыпьте и сахарный песок вместе с солью, а вот мед добавляется только при подаче каши на стол - отдельно каждому в тарелку. Залить кипятком рис в емкости и поместить емкость на плиту, включив максимальный нагрев.Довести до кипения и удалить пену, затем нагрев уменьшить до среднего и отварить кашу в течение 20 минут. Помните о том, что рис должен развариться, поэтому к привычным 12-15 минутам готовки прибавьте еще 5-10 минут. Спустя указанное время каша будет полностью готова - всю жидкость из емкости вываривать не нужно, рис при пропаривании сам впитает ее в себя. Добавить сливочное масло, оставив немного для подачи. Тщательно вмешать его ложкой или лопаткой в рисовую кашу. Вместо него можно влить растительное масло: оливковое холодного отжима, подсолнечное, но без запаха. Накрыть емкость крышкой, выключив нагрев, оставить на 5-7 минут, чтобы крупа "втянула" масло в себя, каша получилась сочной, глянцевой. Выложить приготовленное блюдо в тарелки, пиалы, сдобрить сливочным маслом и подать к столу. По желанию можно добавить немного меда, сгущенного молока, если любите сладкие блюда, или измельченную зелень, натертую брынзу, творог.',
                cooktime: '25 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак5(fat).jpg',
                title: 'Молочная лапша',
                ingridients:
                    'На 2 порции:\nМолоко ½ л\nВермишель 75 г\nМасло сливочное 30 г\nСахар 1 ст. л.\nСоль ½ ч. л.',
                Stepscooking:
                    'Молоко ставим в кастрюльке на огонь. По мере нагревания добавляем соль 1/2 ч.ложки без горки, сахар 1 ст.ложка, перемешиваем. Как молоко закипело — огонь убавляем, чтобы молоко бурлило, но не убегало. Насыпаем вермишель и 1-2 минуты помешиваем, чтобы вермишель не прилипла ко дну и не стала комком. Варим 7-10 минут после закипания молока с вермишелью. Выключаем огонь и даем супу «отдохнуть» еще 10 минут. Разливаем в порционные миски, в каждую кладем 1/2 ч.ложки сливочного масла.',
                cooktime: '20 мин',
              ),
            ]);
          } else if (bmi < 18.6) {
            _recipes.clear();
            _recipes.addAll([
              const DescriptionRecipe(
                image: 'assets/images/завтрак1(low).jpg',
                title: 'Омлет с сыром и ветчиной',
                ingridients:
                    'Яйца 2шт.\nВетчина 50 гр\nПомидоры 1шт.\nТвёрдый сыр 25 гр\nМолоко 50 мл\nРастительное масло 10 гр\nЗелень по вкусу\nСоль по вкусу\nСпеции сухие по вкусу',
                Stepscooking:
                    'Ветчину нарежьте небольшими кубиками.Сковороду для омлета разогрейте до горячего состояния и налейте на неё немного растительного масла. Выложите нарезанную ветчину и обжарьте е в течении минуты на небольшом огнеВ отдельной чаше соедините яйца с молоком. Подсыпьте немного соли и специи. Все взболтайте венчиком до однородной массы. При добавлении соли учитывайте, что ветчина уже соленая и придаст омлету свой вкус.В яичную массу добавьте сыр, натертый на терке. Сыр можно использовать любой, главное, чтобы он хорошо плавился и легко терся на терке. Смешайте сыр с яйцами.Помидоры помойте, разрежьте напополам и удалите плодоножку. Нарежьте помидоры на кубики и добавьте в сковороду к ветчине.',
                cooktime: '20 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак2(low).jpg',
                title: 'Овсяная каша с орехами и бананом',
                ingridients:
                    'Соль морская - 1/8 ч. л.\nОвсяные хлопья быстрого приготовления (геркулес) - 2 стакана\nБанан (резаный кружочками) - 2 шт.\nКорица - 1 ч. л.\nВанильный экстракт - 2 ч. л.\nГрецкие орехи (жареные, рубленые) - 1/4 стакана\nМед жидкий - 4 ч. л.',
                Stepscooking:
                    'В большой сотейник налить 3 стакана воды, на сильном огне довести до кипения и добавить 1/8 чайной ложки соли. Насыпать в кипящую воду овсянку и половину бананов, огонь уменьшить до минимального и готовить овсянку с бананом, не накрывая сотейник крышкой, периодически помешивая, около 3 минут (за это время жидкость должна почти полностью выпариться, а хлопья разбухнуть). Снять овсянку с бананом с плиты, добавить в кашу оставшийся банан, корицу и ваниль. Подавать овсянку с бананом в порционных тарелках, посыпав рублеными орехами и полив медом.',
                cooktime: '10 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак3(low).jpg',
                title: 'Рисовая каша с бананами и мускатным орехом',
                ingridients:
                    'Рис 50 г\nБанан 2 шт.\nБанановые чипсы 2 горсти\nМолоко 75 мл\nСливочное масло 1 ст. л.\nМускатный орех молотый ¼ ч. л.\nСоль морская 1 щепотка',
                Stepscooking:
                    'Рис залить 75 мл кипятка и поставить на огонь. Когда вода закипит, влить молоко. В общей сложности рисовая каша должна вариться 25–30 минут.Бананы почистить и раздавить вилкой.Половину банановых чипсов поломать на мелкие кусочки. Готовую кашу посолить, немного взбить в блендере, добавить размятые бананы и измельченные чипсы.Керамическую форму для запекания смазать сливочным маслом, выложить в нее рисовую кашу, сверху украсить оставшимися банановыми чипсами, посыпать мускатным орехом.',
                cooktime: '1 час',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак4(low).jpg',
                title: 'гречневая каша с тушёнкой',
                ingridients:
                    'На 5 порций:\nГречка 1 стак.\nВода 2 стак.\nЛук 1 шт.\nМорковь 1 шт.\nТушенка 500 гр\nСоль по вкусу\nРастительное масло (Для жарки) 20 гр',
                Stepscooking:
                    'Для приготовления каши промойте гречневую крупу. Залейте её водой в соотношении 1/2. Воды должно быть в 2 раза больше. Поставьте на огонь и доведите до кипения. Немного подсолите. Накройте кастрюлю крышкой и сделайте самый маленький огонь. Готовьте гречку до тех пор, пока остаётся вода. Периодически с помощью ложки отодвигайте с краю гречку и проверяйте.Овощи:лук и морковь очистите и помойте в проточной воде. Лук мелко нарежьте. Морковь натрите на средней терке. Сковороду разогрейте и налейте немного растительного масла. Обжарьте в течении 1-2 минут измельченные лук и морковь. Банку тушенки откройте и добавьте её содержимое в сковороду. Все хорошо перемешайте и прожарьте, чтобы жир из тушенки растаял. Затем добавьте в сковороду готовую гречневую кашу. Перемешайте и хорошо все прогрейте.',
                cooktime: '40 мин',
              ),
              const DescriptionRecipe(
                image: 'assets/images/завтрак5(low).jpg',
                title: 'Макароны с мясными тефтелями',
                ingridients:
                    'На 4 порции:\nДЛЯ ТЕФТЕЛЕЙ:\n:Фарш мясной 500 гр\nРис 30 гр\nЛук 1 шт.\nМорковь 1 шт.\nПшеничная мука 1 стол.л.\nСоль по вкусу\nСпеции сухие по вкусу\nДЛЯ СОУСА:\n:Томатная паста 2 стол.л.\nПшеничная мука 1 стол.л.\nВода 300 мл\nЛук 1 шт.\nСоль по вкусу\nСпеции сухие по вкусу\nДОПОЛНИТЕЛЬНО:\n:Макароны 300 гр\nРастительное масло (для жарки) 30 гр',
                Stepscooking:
                    'Для тефтелей можно использовать любой вид мяса. Макароны можно взять любые.Рис предварительно отварите в кипящей воде согласно инструкции на упаковке. Обычно на это уходит минут 15-20. За время варки рис станет мягкий. Откиньте его на дуршлаг, промойте в холодной воде и оставьте немного постоять, чтобы стекла вся вода. Лук и морковь очистите от кожуры и ополосните. Лук мелко нарежьте, а морковь потрите на терке. Для приготовления тефтелей соедините мясной фарш и готовый рис. Добавьте измельченные лук и морковь. Всыпьте муку. По вкусу добавьте соль и специи. В качестве специи я беру молотый перец, паприку и немного сушеного базилика. Все ингредиенты смешайте. Мясная масса получается плотная и однородная. Немного отбейте её о дно чаши. Благодаря этому тефтели будут хорошо держать форму. На горячую сковороду налейте немного растительного масла. Из мясной массы слепите тефтели и обжарьте их со всех сторон до легкого подрумянивания. В отдельном стакане смешайте воду, муку и томатную пасту. Мелко нарежьте очищенную луковицу и выложите её в сковороду к тефтелям. Залейте все томатным соусом. Добавьте соль и специи. Доведите все до кипения. Накройте сковороду крышкой и тушите тефтели на небольшом огне минут 20. Пока тефтели готовятся сварите макароны. Опустите их в горячую воду и варите минут 10-15, чтобы они стали мягкие. Затем откиньте на дуршлаг и дайте стечь воде.За время тушения соус в тефтелях станет гуще. Снимите сковороду с огня. При необходимости воды можно добавить больше, чтобы получить больше соуса.Разложите на тарелки макароны и добавьте тефтели с соусом.',
                cooktime: '1 час',
              ),
            ]);
          }
          return ListView.builder(
              itemCount: 5,
              itemExtent: 30.h,
              itemBuilder: (BuildContext context, int index) {
                final Recipes = _recipes[index];
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => recipes(
                                    image: Recipes.image,
                                    title: Recipes.title,
                                    ingridients: Recipes.ingridients,
                                    Stepscooking: Recipes.Stepscooking,
                                    cooktime: Recipes.cooktime,
                                  )));
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        width: MediaQuery.of(context).size.width,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12.sp),
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.35),
                                    BlendMode.multiply),
                                image: AssetImage(Recipes.image),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.5),
                                child: Text(
                                  Recipes.title,
                                  style: TextStyle(
                                      fontSize: 20.sp, color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Align(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                alignment: Alignment.bottomRight,
                                child: Row(
                                  children: [
                                    const Icon(Icons.timer,
                                        color: Colors.white, size: 18),
                                    Text(
                                      Recipes.cooktime,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )));
              });
        });
  }
}
