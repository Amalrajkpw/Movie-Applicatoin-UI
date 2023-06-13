import 'package:flutter/material.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: Center(child: Text('search')),
      ),
    );
  }
}