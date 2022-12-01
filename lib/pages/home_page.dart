

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(236, 243, 158, 1),
        appBar: AppBar(
          title: Text("Health Helper",
              style: TextStyle(fontSize: 25, color:Color.fromRGBO(255,255,255,1)),
              textDirection: TextDirection.ltr),
              backgroundColor: Color.fromRGBO(49,87, 44,1),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color.fromRGBO(49,87, 44,1),
        ),
      ),
    );
  }
}
