import 'package:fitapp/Pages/messages.dart';
import 'package:fitapp/Pages/reward.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'feed.dart';
import 'homepage.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

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
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        color: body,
        shape: CircularNotchedRectangle(),
        elevation: 20,
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                icon: SvgPicture.asset('Assets/Icons/home.svg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Map', style: TextStyle(color: Colors.black)),
                  SvgPicture.asset('Assets/Icons/dot.svg'),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'Assets/Icons/play.svg',
                  width: 40,
                  height: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedPage()),
                  );
                },
                icon: SvgPicture.asset('Assets/Icons/heart.svg'),
              ),
              IconButton(
                onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RewardPage()),
                    );
                },
                icon: SvgPicture.asset('Assets/Icons/medal.svg'),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
           
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Images/map.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
