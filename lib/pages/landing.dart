import 'package:flutter/cupertino.dart';
import 'package:health_helper/pages/auth.dart';
import 'package:health_helper/pages/home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isloggedIn = false;

    return isloggedIn ? HomePageScreen() : AuthorizationPage();
  }
}
