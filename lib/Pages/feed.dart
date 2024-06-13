import 'package:fitapp/Pages/mappage.dart';
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
                      // Replace the FeedPage() with the page you want to navigate to
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => PageToNavigate()),
                      // );
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('Assets/Images/image.png'),
                    ),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First line of text',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Second line of text',
                          style: TextStyle(fontSize: 14, color: txt),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
}
