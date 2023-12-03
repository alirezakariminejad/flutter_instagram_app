import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';
import 'package:instagram_app_clone/screens/activity_screen.dart';
import 'package:instagram_app_clone/screens/add_content_screen.dart';
import 'package:instagram_app_clone/screens/home_screen.dart';
import 'package:instagram_app_clone/screens/search_screen.dart';
import 'package:instagram_app_clone/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationBarItem = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: darkGray,
          currentIndex: _selectedBottomNavigationBarItem,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              _selectedBottomNavigationBarItem = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'item1',
              icon: Image.asset(
                'assets/images/icon_home.png',
              ),
              activeIcon: Image.asset(
                'assets/images/icon_active_home.png',
              ),
            ),
            BottomNavigationBarItem(
              label: 'item2',
              icon: Image.asset(
                'assets/images/icon_search_navigation.png',
              ),
              activeIcon: Image.asset(
                'assets/images/icon_search_navigation_active.png',
              ),
            ),
            BottomNavigationBarItem(
              label: 'item3',
              icon: Image.asset(
                'assets/images/icon_add_navigation.png',
              ),
              activeIcon: Image.asset(
                'assets/images/icon_add_navigation_active.png',
              ),
            ),
            BottomNavigationBarItem(
              label: 'item4',
              icon: Image.asset(
                'assets/images/icon_activity_navigation.png',
              ),
              activeIcon: Image.asset(
                'assets/images/icon_activity_navigation_active.png',
              ),
            ),
            BottomNavigationBarItem(
              label: 'item4',
              icon: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    width: 2.0,
                    color: white,
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover),
                ),
              ),
              activeIcon: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    width: 2.0,
                    color: fuchsiaFelicity,
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: IndexedStack(
            index: _selectedBottomNavigationBarItem,
            children: getLayout(),
          ),
        ),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      HomeScreen(),
      SearchScreen(),
      AddContentScreen(),
      ActivityScreen(),
      UserProfileScreen()
    ];
  }
}
