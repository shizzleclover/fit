import 'package:fitapp/Pages/calender.dart';
import 'package:fitapp/Pages/mappage.dart';
import 'package:fitapp/Widgets/iconbutton.dart';
import 'package:fitapp/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedPage extends StatefulWidget {
   const FeedPage({Key? key}) : super(key: key);

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
      backgroundColor: body,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 130.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('Assets/Icons/avat.png'), // Changed to a valid image format
                  ),
                  Column(
                    children: [
                      Text(
                        'Hello Linh!',
                        style: TextStyle(
                          fontFamily: 'CircularStd', 
                          color: txt, 
                          fontSize: 20
                        ),
                      ),
                      Text(
                        'Thursday, 08 July',
                        style: TextStyle(
                          fontFamily: 'CircularStd', 
                          color: txt, 
                          fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  ButtonIcon(
                    backgroundColor: Colors.black,
                    svgPath: 'Assets/Icons/challenge.svg',
                    width: 64,
                    height: 64,
                    radius: 100,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CalenderPage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: body,
        shape: CircularNotchedRectangle(),
        elevation: 20,
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
                    icon: SvgPicture.asset('Assets/Icons/location.svg'),
                  ),
                ],
              ),
            ),
            CustomTextField(
              hintText: 'Search Friends Or Neighbours',
                 leftIconPath: 'Assets/Icons/star.svg',
                  rightIconPath: 'Assets/Icons/star.svg',
                ),
            SizedBox(width: 1),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'Assets/Icons/Play.svg',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            SizedBox(width: 27),
            Column(
              children: [
                SizedBox(height: 20),
                Text('Social', style: TextStyle(color: Colors.black)),
                SvgPicture.asset('Assets/Icons/Dot.svg'),
              ],
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('Assets/Icons/medal.svg'),
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
