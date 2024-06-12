import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   child: Image.asset(
      //     'Assets/Images/Map.png',
      //     width: MediaQuery.of(context).size.width,
      //     height: MediaQuery.of(context).size.height,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // bottomNavigationBar: CustomBottomAppBar(myColor2: myColor2),
    );
  }
}

// class CustomBottomAppBar extends StatelessWidget {
//   final Color myColor2;

//   const CustomBottomAppBar({
//     Key? key,
//     required this.myColor2,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20.0),
//         topRight: Radius.circular(20.0),
//       ),
//       child: Container(
//         color: myColor2,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               height: 200.0, 
//               color: myColor2,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Image.asset(
//                     'Assets/Images/garbage.jpg',
//                     height: 53.0,
//                     width:  350.0, 
//                     fit: BoxFit.cover,
//                   ),
//                   Image.asset(
//                     'Assets/Images/garbage.jpg',
//                     height: 53.0,
//                     width: 350.0, 
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'Assets/Icons/HomeIcon.svg',
//                       width: 35,
//                       height: 35,
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Homepage()),
//                       );
//                     },
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'Assets/Icons/StackIcon.svg',
//                       width: 35,
//                       height: 35,
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Landingpage()),
//                     );
//                     },
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'Assets/Icons/LeafIcon.svg',
//                       width: 35,
//                       height: 35,
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ForecastPage()),
//                     );
//                     },
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'Assets/Icons/LogoIcon.svg',
//                       width: 35,
//                       height: 35,
//                     ),
//                     onPressed: () {

//                       Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfilePage()),
//               );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),

//     );
//   }
// }