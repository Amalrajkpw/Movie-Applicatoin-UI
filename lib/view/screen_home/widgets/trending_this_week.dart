import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../const/api_constants.dart';
import '../../../infrastructure/movie_get_api.dart';
import '../../../widgets/const_widgets.dart';

class TrendinThisWeek extends StatefulWidget {
  TrendinThisWeek({Key? key}) : super(key: key);

  @override
  State<TrendinThisWeek> createState() => _TrendinThisWeekState();
}

class _TrendinThisWeekState extends State<TrendinThisWeek> {
  ValueNotifier<int> changedCarosuelIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: MoviesApi().fetchData(),
          builder: (context, snapshot) {
            if (snapshot.data == []) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              final data = snapshot.data!;
              return CarouselSlider.builder(
                options: CarouselOptions(
                  onPageChanged: ((index, reason) {
                    changedCarosuelIndex.value = index;
                  }),
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Stack(
                  children: [
                    Container(
                      foregroundDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color.fromARGB(255, 5, 53, 92),
                        ],
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(ApiConst.tmdbImageUrl +
                                  data[itemIndex]['backdrop_path']),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                        bottom: 35,
                        left: 15,
                        child: BasicFont(
                          title: data[itemIndex]['title'],
                          size: 10,
                          bold: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Positioned(
                        bottom: 10,
                        left: 15,
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.yellow),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: BasicFont(
                                  bold: FontWeight.w700,
                                  size: 12,
                                  title: 'HD ',
                                ),
                              ),
                            ),
                            WSize10,
                            BasicFont(
                              title: '2023  ',
                              size: 14,
                              bold: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ],
                        )),
                  ],
                ),
              );
            }
          },
        ),
        HSize10,
        SizedBox(
          height: 10,
          width: double.infinity,
          child: Center(
            child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        width: 12,
                        height: 5,
                        decoration: BoxDecoration(
                            color: changedCarosuelIndex == index
                                ? Colors.black
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
