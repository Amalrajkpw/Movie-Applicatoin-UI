import 'package:flutter/material.dart';

class MovieOptions extends StatelessWidget {
  MovieOptions({Key? key, required this.icon, required this.text})
      : super(key: key);
  dynamic icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
