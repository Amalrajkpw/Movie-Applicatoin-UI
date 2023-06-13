import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:movie_mod_application/view/main_screen/screen_main.dart';
import 'package:movie_mod_application/view/screen_login/screen_login.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/controller/login_controller.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  final controller = Get.put(LoginController());
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      checkLogIn();
    });
    super.initState();
  }

  Widget build(BuildContext context) {
     
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 2, 20, 35),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('animations/65556-movies-title-animation.json'),
                Container(
                  height: 100,
                  width: double.infinity,
                  child:const Image(
                      image: NetworkImage(
                          'https://moviesmod.pro/wp-content/uploads/2022/12/moviesmodnew-Custom.png')),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  // function for checking the user signin
  checkLogIn() async {
    final sharedPref = await SharedPreferences.getInstance();
    final userLoggedIn = sharedPref.getBool(SAVE_KEY);
    if (userLoggedIn == null || userLoggedIn == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ScreenLogin()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ScreenMain()));
    }
  }
}

 