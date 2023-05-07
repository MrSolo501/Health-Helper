import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:health_helper/Services/database.dart';
import 'package:health_helper/domain/user.dart';
import 'package:health_helper/pages/auth.dart';
import 'package:health_helper/pages/home_page.dart';
import 'package:health_helper/pages/login_screen.dart';
import 'package:health_helper/pages/welcome_page.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int weight = 0;
  int? height;
  int? age;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    weight = prefs.getInt('weight') ?? 0;
    height = prefs.getInt('height') ?? 0;
    age = prefs.getInt('age') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    final AuthUser? user = Provider.of<AuthUser?>(context);
    final bool isloggedIn = user != null;
    dynamic Screen = WelcomeScreen();
    /* if(DatabaseService().getdata()!=null){
       Screen=HomePageScreen();
    }*/

    Future<double?> _checkUserLoggedIn() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs
          .getDouble('imt'); //  Just a get method from shared preferences
    }

    return FutureBuilder<double?>(
        future: _checkUserLoggedIn(),
        builder: (context, snapshot) {
          double t = snapshot.data ?? 0.0;
          return (t==0.0) ? WelcomeScreen() : HomePageScreen();
        });
  }
}
