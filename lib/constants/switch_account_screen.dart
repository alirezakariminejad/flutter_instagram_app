import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/constants.dart';

class SwitchAccount extends StatefulWidget {
  const SwitchAccount({super.key});

  @override
  State<SwitchAccount> createState() => _SwitchAccountState();
}

class _SwitchAccountState extends State<SwitchAccount> {
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/switch_account_background.png',
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: SafeArea(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 44.0),
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
                          child: Container(
                            width: double.infinity,
                            height: 360.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 0.5),
                                  Color.fromRGBO(255, 255, 255, 0.2),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 130.0,
                                        height: 130.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/profile.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15.0),
                                      Text(
                                        'Alireza Kariminejad',
                                        style: TextStyle(
                                            color: white,
                                            fontSize: 16.0,
                                            fontFamily: 'GB'),
                                      ),
                                      const SizedBox(height: 15.0),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          backgroundColor: fuchsiaFelicity,
                                          minimumSize: Size(130.0, 45.0),
                                        ),
                                        onPressed: () {},
                                        child: Text('Confirm'),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Switch Account',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 16.0,
                                        fontFamily: 'GB'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            color: gray,
                            fontSize: 16.0,
                            fontFamily: 'GB',
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          '|',
                          style: TextStyle(
                            color: gray,
                            fontSize: 16.0,
                            fontFamily: 'GB',
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: white,
                            fontSize: 16.0,
                            fontFamily: 'GB',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
