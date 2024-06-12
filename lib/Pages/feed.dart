import 'package:fitapp/Pages/mappage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeedPage extends StatefulWidget {
   FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Color txt = Color.fromRGBO(127, 127, 127, 1);
    Color bord = Color.fromRGBO(191, 191, 191, 1);
    Color blm = Color.fromRGBO(4, 4, 21, 1);
    Color bottom = Color.fromRGBO(255, 228, 232, 1);
    Color body = Color.fromRGBO(255, 255, 255, 1);
    Color con = Color.fromRGBO(255, 96, 121, 1);
    Color conta = Color.fromRGBO(255, 96, 121, 1);

    return Scaffold(
       bottomNavigationBar: BottomAppBar(
        color: body,
        shape: CircularNotchedRectangle(),
        elevation: 20, // Set elevation for the bottom app bar
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
              onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedPage()),
                    );
              },
              icon: SvgPicture.asset('Assets/Icons/heart.svg'),
            ),
                  SizedBox(width: 23),
                  IconButton(
              onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
              },
              icon: SvgPicture.asset('Assets/Icons/location.svg' ),
              
            ),
                ],
              ),
            ),
            SizedBox(width: 1),
            Padding(
              padding: EdgeInsets.only(bottom: 10), // Add vertical padding for center icon
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('Assets/Icons/Play.svg'
                , width: 40,
                height: 40,
                ), // Replace 'YOUR_SVG_FILE_PATH' with the path to your SVG file
              ),
            ),
            SizedBox(width: 27,),
            Column(
              
              children: [
                SizedBox(height: 20,),
                    Text('Social', style: TextStyle(color: Colors.black)),
                    SvgPicture.asset('Assets/Icons/Dot.svg'),
              ],
            ),
            
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('Assets/Icons/medal.svg',),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBarItem(int index, String iconPath, String text) {
    return IconButton(
      icon: _selectedIndex == index
          ? Text(text, style: TextStyle(fontFamily: 'CircularStd', color: Colors.black))
          : SvgPicture.asset(iconPath),
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}

    