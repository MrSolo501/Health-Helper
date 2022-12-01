import 'package:flutter/material.dart';
import 'package:health_helper/pages/settings.dart';
import 'package:health_helper/tasks_list/tasks_list.dart';

class HomepageScreenWidget extends StatefulWidget {
  const HomepageScreenWidget({super.key});

  @override
  _HomepageScreenWidgetState createState() => _HomepageScreenWidgetState();
}

class _HomepageScreenWidgetState extends State<HomepageScreenWidget> {
  int _selectedScreen = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    TasksListWidget(),
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
      backgroundColor: Color.fromRGBO(242, 232, 207, 1),
      appBar: AppBar(
        title: Text("Health Helper",
            style: TextStyle(
                fontSize: 25, color: Color.fromRGBO(255, 255, 255, 1)),
            textDirection: TextDirection.ltr),
        backgroundColor: Color.fromRGBO(106, 153, 78, 1),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions[_selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
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
