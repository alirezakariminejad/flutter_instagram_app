import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';
import 'package:instagram_app_clone/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {});
    });
    passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF323A99),
                Color(0xFFF98BFC),
              ],
            ),
          ),
          child: Stack(
            children: [
              getImageContainer(),
              getContentContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getContentContainer() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60.0),
            decoration: BoxDecoration(
              color: darkGray,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'GB',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Image.asset('assets/images/mood.png'),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 360.0,
                      child: TextField(
                        focusNode: emailFocusNode,
                        onTap: () {
                          print('emailFocusNode');
                        },
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 15.0),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: emailFocusNode.hasFocus
                                ? fuchsiaFelicity
                                : white,
                            fontFamily: 'GB',
                            fontSize: 20.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: whiteLight,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3.0, color: fuchsiaFelicity),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    SizedBox(
                      width: 360.0,
                      child: TextField(
                        focusNode: passwordFocusNode,
                        onTap: () {
                          print('password');
                        },
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 15.0),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: passwordFocusNode.hasFocus
                                ? fuchsiaFelicity
                                : white,
                            fontFamily: 'GB',
                            fontSize: 20.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: whiteLight,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3.0, color: fuchsiaFelicity),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 20.0,
                        ),
                        backgroundColor: fuchsiaFelicity,
                        minimumSize: Size(130.0, 45.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                      },
                      child: Text('login'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        color: gray,
                        fontFamily: 'GB',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '|',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'GB',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'GB',
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getImageContainer() {
    return Positioned(
      top: 40.0,
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/rocket.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
