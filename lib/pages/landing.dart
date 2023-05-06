import 'package:flutter/cupertino.dart';
import 'package:health_helper/domain/user.dart';
import 'package:health_helper/pages/auth.dart';
import 'package:health_helper/pages/welcome_page.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthUser? user=Provider.of<AuthUser?>(context);
    final bool isloggedIn = user!=null;

    return isloggedIn ? WelcomeScreen() : AuthorizationPage();
  }
}
