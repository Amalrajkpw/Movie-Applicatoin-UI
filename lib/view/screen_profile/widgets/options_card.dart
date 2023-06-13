import 'package:flutter/material.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';

class OptionsCard extends StatelessWidget {
  OptionsCard({Key? key, required this.icon, required this.title})
      : super(key: key);
  dynamic icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
                WSize10,
                BasicFont(
                  bold: FontWeight.w300,
                  title: title,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15)
        ],
      ),
    );
  }
}
