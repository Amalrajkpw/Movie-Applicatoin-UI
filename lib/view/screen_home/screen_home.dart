 
import 'package:flutter/material.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';
 
import 'package:movie_mod_application/view/screen_home/widgets/trending_this_week.dart';
import 'package:movie_mod_application/widgets/popular_movies_card.dart';
import 'package:movie_mod_application/widgets/trending_movie_card.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:const Icon(Icons.dehaze_sharp),
          title:const Image(
            image: NetworkImage(
                'https://moviesmod.pro/wp-content/uploads/2022/12/moviesmodnew-Custom.png'),
            height: 35,
          ),
          centerTitle: true,
          actions:const [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Icon(Icons.save_alt_sharp),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HSize20,
                Padding(
                  padding: const EdgeInsets.only(left: 18, bottom: 10),
                  child: BasicFont(
                    title: 'Trending this week',
                    size: 18,
                    bold: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TrendinThisWeek(),
                HSize20,
                Padding(
                  padding: const EdgeInsets.only(left: 18, bottom: 10),
                  child: BasicFont(
                    title: 'Popular Movies',
                    size: 18,
                    bold: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            const     PopularMovieCard(),
                Padding(
                  padding: const EdgeInsets.only(left: 18, bottom: 10),
                  child: BasicFont(
                    title: 'Trending Now',
                    size: 18,
                    bold: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              const   TrendingMovieCards()
              ],
            ),
          ),
        ));
  }
}
