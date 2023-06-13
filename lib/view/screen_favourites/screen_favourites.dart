import 'package:flutter/material.dart';

class ScreenFavourites extends StatelessWidget {
  const ScreenFavourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff012A52),
      child: Center(
        child: Text('favourites'),
      ),
    );
  }
}