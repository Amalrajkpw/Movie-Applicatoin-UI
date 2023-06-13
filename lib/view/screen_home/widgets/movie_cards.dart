

// class MovieCards extends StatelessWidget {
//   const MovieCards({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 220, 
//       width: double.infinity  ,
//       child: ListView.builder(
//         itemCount: 10,
//         shrinkWrap: true,
//         physics: ScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: ((context, index) {
//         return Padding(
//         padding: const EdgeInsets.only(left: 20,top: 10 ),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16) ,
            
    
//           ),
//           height: 220, 
//           width: 110,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start ,
//             children: [
//             Container(
//               height: 140,
//               width: 110,
//              decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(7 ),
//               image:DecorationImage(image: NetworkImage('https://marketplace.canva.com/EAFVCFkAg3w/1/0/1131w/canva-red-and-black-horror-movie-poster-AOBSIAmLWOs.jpg'),fit: BoxFit.fill )),
//             ),
//             BasicFont(title: 'Movie Name', size: 14, bold: FontWeight.normal,color: Colors.white,),
//             BasicFont(title: 'Description', size: 10, bold: FontWeight.normal,color: Colors.white,)
//           ]),
//         ),
//       );
//       })),
//     );
//   }
// }
