import 'package:health_helper/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';




class WelcomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(242, 232, 207, 1),
      body: Container(
        decoration: BoxDecoration(

        image: DecorationImage(
        image: NetworkImage('https://github.com/hritikutekar/Diet-Planner-UI/blob/master/assets/images/background.jpg'),
    fit: BoxFit.fill),),

        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/HH.png'),
        //     fit: BoxFit.cover,
        //   ),
        // ),

        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 80.0),
            child: Stack(
              children: <Widget>[

                Column(
                  children: <Widget>[
                    Text(
                      'Health Helper',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Text(
                      'Организуйте свой образ жизни',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(56, 102, 65, 1),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Следи за своим рационом питания, занимайся спортом, веди здоровый образ жизни быстро и просто с нашим приложениемю',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(56, 102, 65, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(

                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginScreen(),
                        ),
                      );
                    },

                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black87,
                      backgroundColor: Color.fromRGBO(106, 153, 78, 1),
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),

                    // style: TextStyle(
                    //   color: Colors.blueGrey[800]
                    // );
                    // color: Colors.blueGrey[800],
                    // padding: EdgeInsets.symmetric(vertical: 15.0),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    child: Text(
                      'Начнём!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}