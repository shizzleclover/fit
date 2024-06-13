import 'package:fitapp/Pages/calender.dart';
import 'package:fitapp/Pages/feed.dart';
import 'package:fitapp/Pages/mappage.dart';
import 'package:fitapp/Pages/speedpage.dart';
import 'package:fitapp/Widgets/cont.dart';
import 'package:fitapp/Widgets/iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollPage extends StatefulWidget {
  const ScrollPage({Key? key});

  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
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

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: body,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 90.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Image.asset('Assets/Images/image.png'),
                 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Linh!',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 20),
                      ),
                      Text(
                        'Thursday, 08 July',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 20),
                      ),
                    ],
                  ),
                 GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CalenderPage()),
    );
  },
  child: Container(
    height: 64,
    width: 64,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(100),
      border: Border.all(color: Colors.black),
    ),
    child: Center(
      child: SvgPicture.asset(
        'Assets/Icons/Calendar.svg',
        height: 30,
        width: 30,
      ),
    ),
  ),
),

                  // ButtonIcon(
                  //   backgroundColor: Colors.white,
                  //   svgPath: 'Assets/Icons/Calendar.svg',
                  //   width: 64,
                  //   height: 64,
                  //   radius: 100,
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => CalenderPage()),
                  //     );
                  //   },
                  // ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                '1 883 Kcal',
                style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 50),
              ),
              Text(
                'Total Kilocalories',
                style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 20),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '7580 m',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Distance',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        '9832',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Steps',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        '1248',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Points',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset('Assets/Images/chart.png', width: screenWidth * 0.8),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildContainer(
                    svgPath: 'Assets/Icons/dumb.svg',
                    value: '628',
                    unit: 'Kcal',
                    label: 'Dumbbell',
                    conta: conta,
                    body: body,
                  ),
                  SizedBox(width: 16),
                  _buildContainer(
                    svgPath: 'Assets/Icons/dumb.svg',
                    value: '628',
                    unit: 'Kcal',
                    label: 'Dumbbell',
                    conta: conta,
                    body: body,
                  ),
                  SizedBox(width: 16),
                  _buildContainer(
                    svgPath: 'Assets/Icons/dumb.svg',
                    value: '628',
                    unit: 'Kcal',
                    label: 'Dumbbell',
                    conta: conta,
                    body: body,
                  ),
                ],
              ),
              SizedBox(height: 30),
              _buildSectionTitle('My Plan', 'Assets/Icons/circ.svg', screenWidth),
              SizedBox(height: 10),
              Text('July, 2021', style: TextStyle()),
              SizedBox(height: 30),
              _buildPlanContainer(con, txt, blm, body),
              SizedBox(height: 30),
              _buildSectionTitle('Recent Plan', null, screenWidth, seeAll: true),
              SizedBox(height: 10),
              Text('July, 2021', style: TextStyle(fontFamily: 'CircularStd', fontWeight: FontWeight.w400, fontSize: 14, color: txt)),
              SizedBox(height: 40),
              _buildIconRow(con),
              SizedBox(height: 30),
              _buildSectionTitle('Today\'s Information', 'Assets/Icons/circ.svg', screenWidth),
              SizedBox(height: 10),
              Text('July, 2021', style: TextStyle()),
              SizedBox(height: 30),
              _buildInfoRow(bord, body),
              SizedBox(height: 50),
              _buildInviteContainer(con, bord),
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
                  Text('Home', style: TextStyle(color: Colors.black)),
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
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedPage()),
                );
              },
              icon: SvgPicture.asset('Assets/Icons/heart.svg'),
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

  Widget _buildContainer({
    required String svgPath,
    required String value,
    required String unit,
    required String label,
    required Color conta,
    required Color body,
  }) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: conta,
        borderRadius: BorderRadius.circular(28),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(svgPath),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  color: body,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                unit,
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  color: body,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w400,
              color: body,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, String? iconPath, double screenWidth, {bool seeAll = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontFamily: 'CircularStd', fontWeight: FontWeight.w700, fontSize: 20)),
        if (iconPath != null) SvgPicture.asset(iconPath),
        if (seeAll)
          GestureDetector(
            onTap: () {
              
            },
            child: Text('See All', style: TextStyle(fontFamily: 'CircularStd', fontWeight: FontWeight.w700, fontSize: 18)),
          ),
      ],
    );
  }

  Widget _buildPlanContainer(Color con, Color txt, Color blm, Color body) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 228, 232, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: ButtonIcon(
                  backgroundColor: con,
                  svgPath: 'Assets/Icons/energy.svg',
                  width: 64,
                  height: 64,
                  radius: 100,
                  onTap: () {},
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('WEEK 1', style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(height: 2),
                  Text('Body Weight', style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 16, fontWeight: FontWeight.w700)),
                  Text('Workout 1 of 5', style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 64,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: SvgPicture.asset('Assets/Icons/cp.svg', width: 25, height: 25),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text('Next exercise', style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 14, fontWeight: FontWeight.w400)),
                        Text('Lower Strength', style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 16, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconRow(Color con) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ButtonIcon(
              backgroundColor: con,
              svgPath: 'Assets/Icons/star.svg',
              width: 64,
              height: 64,
              radius: 18,
              onTap: () {},
            ),
            Text('Special'),
          ],
        ),
        SizedBox(width: 30),
        Column(
          children: [
            ButtonIcon(
              backgroundColor: con,
              svgPath: 'Assets/Icons/slope.svg',
              width: 64,
              height: 64,
              radius: 18,
              onTap: () {},
            ),
            Text('Beach Rea...'),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: [
            ButtonIcon(
              backgroundColor: con,
              svgPath: 'Assets/Icons/trophy.svg',
              width: 64,
              height: 64,
              radius: 18,
              onTap: () {},
            ),
            Text('Full - Body'),
          ],
        ),
        SizedBox(width: 30),
        Column(
          children: [
            ButtonIcon(
              backgroundColor: con,
              svgPath: 'Assets/Icons/challenge.svg',
              width: 64,
              height: 64,
              radius: 18,
              onTap: () {},
            ),
            Text('Challenge'),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoRow(Color bord, Color body) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            _buildInfoContainer('Calories', 'Assets/Icons/flame.svg', '620.68', 'Kcal', bord),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SpeedPage()),
                );
              },
              child: _buildInfoContainer('Steps', 'Assets/Icons/shoe.svg', '620.68', 'Kcal', bord),
            ),
          ],
        ),
        SizedBox(width: 40),
        Container(
          width: 158,
          height: 252,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: bord, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Heart', style: TextStyle()),
                  Spacer(),
                  SvgPicture.asset('Assets/Icons/heartt.svg'),
                ],
              ),
              SizedBox(height: 20),
              SvgPicture.asset('Assets/Icons/shin.svg'),
              Text('74', style: TextStyle()),
              Text('bpm', style: TextStyle()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoContainer(String title, String iconPath, String value, String unit, Color bord) {
    return Container(
      width: 158,
      height: 118,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: bord, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(title, style: TextStyle()),
              Spacer(),
              SvgPicture.asset(iconPath),
            ],
          ),
          Spacer(),
          Text(value, style: TextStyle()),
          Text(unit, style: TextStyle()),
        ],
      ),
    );
  }

  Widget _buildInviteContainer(Color con, Color bord) {
    return Container(
      width: 367,
      height: 108,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: bord, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          ButtonIcon(
            backgroundColor: con,
            svgPath: 'Assets/Icons/trophy.svg',
            width: 64,
            height: 64,
            radius: 18,
            onTap: () {},
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Invite your friends', style: TextStyle()),
              SizedBox(height: 10),
              Text('Invite your friends to get a \n free exercise right away', style: TextStyle()),
            ],
          ),
        ],
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
