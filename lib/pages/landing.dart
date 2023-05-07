import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:health_helper/domain/user.dart';
import 'package:health_helper/pages/auth.dart';
import 'package:health_helper/pages/home_page.dart';
import 'package:health_helper/pages/login_screen.dart';
import 'package:health_helper/pages/welcome_page.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthUser? user=Provider.of<AuthUser?>(context);
    final bool isloggedIn = user!=null;
//final MyController myController = Get.find();

    return isloggedIn ? WelcomeScreen(): AuthorizationPage();
  }
}
