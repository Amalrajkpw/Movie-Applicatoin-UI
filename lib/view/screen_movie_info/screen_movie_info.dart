import 'package:flutter/material.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';

import 'package:movie_mod_application/view/screen_movie_info/widgets/cast_details.dart';
import 'package:movie_mod_application/view/screen_movie_info/widgets/main_movie_card.dart';
import 'package:movie_mod_application/view/screen_movie_info/widgets/movie_options.dart';
import 'package:movie_mod_application/widgets/popular_movies_card.dart';

import '../../widgets/trending_movie_card.dart';

class ScreenMovieInfo extends StatelessWidget {
  ScreenMovieInfo(
      {Key? key,
      required this.date,
      required this.description,
      required this.movieName,
      required this.image})
      : super(key: key);
  var movieName;
  var description;
  var date;
  var image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ManinMovieCard(
              movieImage: image,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: BasicFont(
                      title: movieName,
                      size: 18,
                      bold: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: Colors.grey,
                            ),
                            BasicFont(
                              title: 'info',
                              size: 10,
                              bold: FontWeight.normal,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        WSize20,
                        Column(
                          children: [
                         const   Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                            BasicFont(
                              title: 'watch later',
                              size: 10,
                              bold: FontWeight.normal,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: BasicFont(
                      title: date,
                      size: 13,
                      bold: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          color: Color.fromARGB(255, 125, 113, 5),
                          child:const Center(
                              child: Text(
                            "TMDB",
                            style: TextStyle(
                                fontSize: 5, fontWeight: FontWeight.bold),
                          )),
                        ),
                     const   SizedBox(
                          width: 7,
                        ),
                        BasicFont(
                          title: '8.2/10',
                          size: 12,
                          bold: FontWeight.normal,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.6,
                child: BasicFontMax(
                  title: description,
                  size: 13,
                  bold: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 31, 53, 216)),
                    onPressed: () {},
                    child: BasicFont(
                      title: 'Watch Now',
                      size: 17,
                      bold: FontWeight.bold,
                    )),
              ),
            ),
            HSize10,
            //movie options
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //movie options card
                  MovieOptions(
                      icon: Icons.favorite_outline, text: 'Add to Favourites'),
                  MovieOptions(icon: Icons.download, text: 'Download'),
                  MovieOptions(icon: Icons.thumb_up_alt_outlined, text: 'Like'),
                  MovieOptions(
                      icon: Icons.file_upload_outlined, text: 'Upload'),
                ],
              ),
            ),
            //description
            HSize20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BasicFont(
                title: description,
                size: 13,
                bold: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            //cast details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BasicFont(
                title: 'Top Cast',
                size: 18,
                bold: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            CastDetails(),

            //review
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BasicFont(
                    title: 'Reviews',
                    size: 18,
                    bold: FontWeight.bold,
                    color: Colors.white,
                  ),
                  BasicFont(
                    title: 'Write a review',
                    size: 13,
                    bold: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BasicFont(
                            title: 'User 100433',
                            size: 18,
                            bold: FontWeight.bold,
                            color: Colors.grey.shade300,
                          ),
                          Container(
                            child: Row(
                              children: [
                              const  Icon(
                                  Icons.thumb_up_alt_outlined,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                BasicFont(
                                  title: '79',
                                  size: 12,
                                  bold: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                                WSize10,
                            const    Icon(
                                  Icons.thumb_down_alt_outlined,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                BasicFont(
                                  title: '21',
                                  size: 12,
                                  bold: FontWeight.normal,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      HSize10,
                      Container(
                          child: Text(
                        ' I admit it. Iam one of those peopple who are skeptical with the idea of having a sequel to the hightest grossing yet forgettable to some audiende of all time... I admit it. Iam one of those peopple who are skeptical with the idea of having a sequel to...',
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: 12),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            //Popular Movies
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BasicFont(
                title: 'Popular Movies',
                size: 18,
                bold: FontWeight.bold,
                color: Colors.white,
              ),
            ),
         const   PopularMovieCard(),
            //Trending now
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BasicFont(
                title: 'Trending Now',
                size: 18,
                bold: FontWeight.bold,
                color: Colors.white,
              ),
            ),
         const   TrendingMovieCards(),
            HSize30,
          ],
        ),
      ),
    );
  }
}
