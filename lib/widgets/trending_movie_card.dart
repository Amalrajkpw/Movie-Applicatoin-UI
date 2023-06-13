import 'package:flutter/material.dart';
import 'package:movie_mod_application/domain/models/movie_list_model.dart';
import 'package:movie_mod_application/infrastructure/movie_get_api.dart';

import 'package:movie_mod_application/widgets/const_widgets.dart';

import '../../../const/api_constants.dart';
import '../view/screen_movie_info/screen_movie_info.dart';

class TrendingMovieCards extends StatelessWidget {
  const TrendingMovieCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: FutureBuilder(
        future: MoviesApi().fetchData(),
        builder: (context, snapshot) {
          if (snapshot.data == []) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            final data = snapshot.data!;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ScreenMovieInfo(
                                    date: data[index]['release_date'],
                                    description: data[index]['overview'],
                                    movieName: data[index]['title'],
                                    image: data[index]['poster_path'],
                                  ))));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 220,
                      width: 110,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          ApiConst.tmdbImageUrl +
                                              data[index]['poster_path']),
                                      fit: BoxFit.fill)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: BasicFontMax(
                                title: data[index]['title'],
                                size: 14,
                                bold: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: BasicFontMax(
                                title: data[index]['overview'],
                                size: 10,
                                bold: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
