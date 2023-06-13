import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicFont extends StatelessWidget {
  BasicFont(
      {Key? key,
      required this.title,
      required this.size,
      required this.bold,
      this.color})
      : super(key: key);
  String title;
  double? size;
  dynamic bold;
  dynamic color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
          fontSize: size, color: color, fontWeight: bold, height: 1.4),
      maxLines: 6,
    );
  }
}

class BasicFontMax extends StatelessWidget {
  BasicFontMax(
      {Key? key,
      required this.title,
      required this.size,
      required this.bold,
      this.color})
      : super(key: key);
  String title;
  double? size;
  dynamic bold;
  dynamic color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
          fontSize: size, color: color, fontWeight: bold, height: 1.4),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

const SAVE_KEY = 'loggedIn';
 

final backgroundColor = Color(0xff012A52);
final HSize10 = SizedBox(
  height: 10,
);
final WSize10 = SizedBox(
  width: 10,
);
final HSize20 = SizedBox(
  height: 20,
);
final HSize30 = SizedBox(
  height: 30,
);
final WSize20 = SizedBox(
  width: 20,
);
