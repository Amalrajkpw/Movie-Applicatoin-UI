import 'package:flutter/material.dart';

import '../../../widgets/const_widgets.dart';

class CastDetails extends StatelessWidget {
    CastDetails({Key? key}) : super(key: key);
List listCasteImages =[
  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
  'https://static.wikia.nocookie.net/jamescameronsavatar/images/e/ed/Sam_Worthington_Avatar_2_Premiere.jpg/revision/latest?cb=20221208184622',
  'https://static.hbo.com/content/dam/hbodata/series/game-of-thrones/character/s5/daenarys-1920.jpg',
  'https://static.hbo.com/content/dam/hbodata/series/game-of-thrones/character/s5/viserys-targaryen-1920.jpg',
  'https://m.media-amazon.com/images/M/MV5BMjIxNjI3NDkwNV5BMl5BanBnXkFtZTcwMDY2NTIwNw@@._V1_UY218_CR0,0,150,218_AL_.jpg',
];
List castNames=[
  'Alexander',
  'Emilia',
  'Joseph',
  'Ales',
  'Cena',
];
  @override
  Widget build(BuildContext context) {
    return    Container(
              height: 110,
              width: double.infinity,
             
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: listCasteImages.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:20,top: 10,),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60, 
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage( 
                                         listCasteImages[index]),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle),
                          ),
                          BasicFont(title:castNames[index], size: 13, bold: FontWeight.normal,color: Colors.white,),
                           BasicFont(title: 'Name', size: 11, bold: FontWeight.normal,color: Colors.grey,)
                        ],
                      ),
                    );
                  })),
            );
  }
}