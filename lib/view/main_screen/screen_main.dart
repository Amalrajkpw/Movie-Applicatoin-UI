import 'package:flutter/material.dart';
import 'package:movie_mod_application/view/screen_favourites/screen_favourites.dart';
import 'package:movie_mod_application/view/screen_home/screen_home.dart';
import 'package:movie_mod_application/view/screen_login/screen_login.dart';
import 'package:movie_mod_application/view/screen_profile/screen_profile.dart';
import 'package:movie_mod_application/view/screen_search/screen_search.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';

class ScreenMain extends StatefulWidget {
  ScreenMain({Key? key}) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  void initState() {
    super.initState();
  }

  final _pages =  [
    ScreenHome(),
  const  ScreenSearch(),
  const  ScreenFavourites(),
  const  ScreenProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: changedBottomNavIndex,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}

ValueNotifier<int> changedBottomNavIndex = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: (changedBottomNavIndex),
      builder: (BuildContext context, dynamic newIndex, Widget? child) {
        return SizedBox(
          height: 54,
          child: BottomNavigationBar(
              currentIndex: changedBottomNavIndex.value,
              
              type: BottomNavigationBarType.fixed,
              backgroundColor: backgroundColor,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey.shade500,
              elevation: 0.0,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              iconSize: 24,
              onTap: ((value) {
                changedBottomNavIndex.value = value;
              }),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline), label: 'Favorites'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
              ]),
        );
      },
    );
  }
}
