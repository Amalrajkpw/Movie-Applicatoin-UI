import 'package:flutter/material.dart';

import '../../../const/api_constants.dart';
import '../../../widgets/const_widgets.dart';

class ManinMovieCard extends StatelessWidget {
    ManinMovieCard({Key? key,required this.movieImage}) : super(key: key);
    var movieImage;

  @override
  Widget build(BuildContext context) {
    // Movie card on the top of movie info screen
    return Stack(
              children: [
                Container(
    foregroundDecoration: const  BoxDecoration(
  gradient: LinearGradient( begin: Alignment. topCenter,
                      end: Alignment.  bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xff012A52) , 
                      ],)
                ), 
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(ApiConst.tmdbImageUrl+movieImage),fit: BoxFit.cover),
                  ),
                ),
                Positioned( 
                 left: MediaQuery.of(context).size.width/2.4,
                 bottom: 200, 
                  child: Column(
                    children: [
                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2 ),
                        ),
                        child: Icon(Icons.play_arrow_sharp,color: Colors.white,),
                      ),
                      BasicFont(title: 'Watch later', size: 8, bold: FontWeight.normal,color: Colors.white,)
                    ],
                  ),
                ),
                Positioned(
                  top: 40 ,left:20 ,
                  child: InkWell(
                    onTap: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Container(
                      height: 25 ,
                      width: 30,
                      
                      decoration: BoxDecoration(
                                  color: Colors.white
                                  .withOpacity(0.3 ),shape: BoxShape.circle
                      ),
                      child:const Padding(
                        padding:   EdgeInsets.only(left: 5),
                        child: Icon(Icons.arrow_back_ios,size: 14 ,color: Colors.white,),
                      ),
                                  
                                  
                                  
                    
                    ),
                  ),
                )
              ],
            );
  }
}