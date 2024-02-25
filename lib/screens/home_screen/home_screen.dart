import 'package:flutter/material.dart';
import 'package:grrowe/screens/home_screen/home.dart';

import 'favorite_vetting.dart';
import 'messages.dart';
import 'my_profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Home(),
    FavoriteVetting(),
    Messages(),
    MyProfile(),

  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 74,
        decoration: const BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.0),
            topRight: Radius.circular(1.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.home,
                    size: 24,
                  ),
                  color: _currentIndex == 0
                      ? Colors.black
                      : Colors.white,
                  onPressed: () => _onTabTapped(0),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite,
                    size: 24,
                  ),
                  color: _currentIndex == 1
                      ? Colors.black
                      : Colors.white,
                  onPressed: () => _onTabTapped(1),
                ),
              ),
              const SizedBox(width: 50),
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.message,
                    size: 24,
                  ),
                  color: _currentIndex == 2
                      ? Colors.black
                      : Colors.white,
                  onPressed: () => _onTabTapped(2),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    size: 24,
                  ),
                  color: _currentIndex == 3
                      ? Colors.black
                      : Colors.white,
                  onPressed: () => _onTabTapped(3),
                ),
              ),
            ],
          ),
        ),
      ),

      //Round shaped floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 70,
        height: 70,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.shade900,
        ),
        child: IconButton(
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            // Add your desired functionality here
          },
        ),
      ),
    );
  }
}
