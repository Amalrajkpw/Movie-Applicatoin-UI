import 'package:flutter/material.dart';
import 'package:movie_mod_application/infrastructure/movie_get_api.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:movie_mod_application/view/screen_splash/screen_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MoviesApi().fetchData();
  runApp(const MovieMod());
}

class MovieMod extends StatelessWidget {
  const MovieMod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        backgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: const ScreenSplash(),
    );
  }
}
