import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/constants.dart';
import 'package:instagram_app_clone/constants/switch_account_screen.dart';
import 'package:instagram_app_clone/screens/activity_screen.dart';
import 'package:instagram_app_clone/screens/add_content_screen.dart';
import 'package:instagram_app_clone/screens/home_screen.dart';
import 'package:instagram_app_clone/screens/login_screen.dart';
import 'package:instagram_app_clone/screens/main_screen.dart';
import 'package:instagram_app_clone/screens/search_screen.dart';
import 'package:instagram_app_clone/screens/test_screen.dart';
import 'package:instagram_app_clone/screens/user_profile_screen.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), 
    ),
  );
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGray,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pattern1.png'),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo_splash.png',
                    width: 200.0,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      Text(
                        'from',
                        style: TextStyle(color: gray, fontSize: 14.0),
                      ),
                      Text(
                        'Expert Flutter',
                        style: TextStyle(color: niceBlue, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
