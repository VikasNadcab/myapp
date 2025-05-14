import 'package:flutter/material.dart';
import 'package:myapp/pages/routeViews/createModule/creatHomePage.dart';
import 'package:myapp/pages/routeViews/userModule/userProfile.dart';
import 'package:myapp/utils/appConfig.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:[CreathomepageScreen(),UserProfile()][1],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize:30,
        selectedItemColor: const Color.fromARGB(255, 103, 0, 238),
        unselectedItemColor: Colors.black,
        items:  <BottomNavigationBarItem>[
          for(var item in Appconfig().bottomNavigation)
          BottomNavigationBarItem(
            icon: Icon(item['icon']),
            label: "",
          ),
         
        ],
        currentIndex: 2,
        // selectedItemColor: Colors.amber[800],
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}