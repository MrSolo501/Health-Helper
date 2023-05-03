import 'package:flutter/material.dart';
import 'package:health_helper/pages/settings.dart';
import 'package:health_helper/widgets/homePageWidgets/tasksListWidget.dart';
import 'package:health_helper/widgets/homePageScreenWidgets.dart';
import 'package:sizer/sizer.dart';
import 'diet.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedScreen = 0;
  static  final List<Widget> _widgetOptions = <Widget>[
    const TaskWidget(),
    const EdaScreenWidget(),
    SettingsScreenWidget(),
  ];

  void onSelectScreen(int index) {
    if (_selectedScreen == index) return;
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text("Health Helper",
            style: TextStyle(
                fontSize: 25.sp, color: Color.fromRGBO(255, 255, 255, 1)),
            textDirection: TextDirection.ltr),
        backgroundColor: Color.fromRGBO(106, 153, 78, 1),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedScreen,
        children:  [
          //TaskWidget(),
          const HomePageScreenWidgets(),
          const EdaScreenWidget(),
          SettingsScreenWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Рацион',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromRGBO(56, 102, 65, 1),
        backgroundColor: Color.fromRGBO(106, 153, 78, 1),
        onTap: onSelectScreen,
      ),
    );
  }
}
