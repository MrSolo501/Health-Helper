import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:health_helper/Services/database.dart';
import 'package:health_helper/domain/user.dart';
import 'package:health_helper/pages/auth.dart';
import 'package:health_helper/pages/home_page.dart';
import 'package:health_helper/pages/login_screen.dart';
import 'package:health_helper/pages/welcome_page.dart';
import 'package:health_helper/widgets/bmi_calculator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthUser? user = Provider.of<AuthUser?>(context);
    final bool isloggedIn = user != null;
    dynamic Screen = WelcomeScreen();
    /* if(DatabaseService().getdata()!=null){
       Screen=HomePageScreen();
    }*/
    Future<void> setParametrsForBMI() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.getDouble(
        'weight',
      );
      
    }

    setParametrsForBMI();

    return (BMICalculator.getBMI() == null) ? WelcomeScreen() : HomePageScreen();
  }
}
