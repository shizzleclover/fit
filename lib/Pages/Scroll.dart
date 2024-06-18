import 'package:fitapp/Pages/reward.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/Pages/calender.dart';
import 'package:fitapp/Pages/feed.dart';
import 'package:fitapp/Pages/mappage.dart';
import 'package:fitapp/Pages/speedpage.dart';
import 'package:fitapp/Widgets/cont.dart';
import 'package:fitapp/Widgets/iconbutton.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('Assets/Images/roun2.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Linh!',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: txt,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Thursday, 08 July',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: txt,
                          fontSize: 20,
                        ),
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
                ],
              ),
              SizedBox(height: 30),
              Text(
                '1 883 Kcal',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  color: blm,
                  fontSize: 50,
                ),
              ),
              Text(
                'Total Kilocalories',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  color: txt,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '7580 m',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: blm,
                        ),
                      ),
                      Text(
                        'Distance',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: txt,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        '9832',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: blm,
                        ),
                      ),
                      Text(
                        'Steps',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: txt,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Text(
                        '1248',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: blm,
                        ),
                      ),
                      Text(
                        'Points',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          color: txt,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset('Assets/Images/chart.png', width: screenWidth * 0.8),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20), // Adjust this value as needed
                  Container(
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
                        SvgPicture.asset('Assets/Icons/dumb.svg'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '628',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                color: body,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4), // Adjust the spacing here
                            Text(
                              'Kcal',
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
                          'Dumbbell',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w400,
                            color: body,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
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
                        SvgPicture.asset('Assets/Icons/dumb.svg'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '628',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                color: body,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4), // Adjust the spacing here
                            Text(
                              'Kcal',
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
                          'Dumbbell',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w400,
                            color: body,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
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
                        SvgPicture.asset('Assets/Icons/dumb.svg'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '628',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                color: body,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 4), // Adjust the spacing here
                            Text(
                              'Kcal',
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
                          'Dumbbell',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w400,
                            color: body,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Plan',
                    style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SvgPicture.asset('Assets/Icons/circ.svg'),
                ],
              ),
              SizedBox(height: 10),
              Text('July, 2021', style: TextStyle()),
              SizedBox(height: 30),
              Container(
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
                              child: Text(
                                'WEEK 1',
                                style: TextStyle(
                                  fontFamily: 'CircularStd',
                                  color: txt,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Body Weight',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                color: blm,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Workout 1 of 5',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                color: blm,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
                                  Text(
                                    'Next exercise',
                                    style: TextStyle(
                                      fontFamily: 'CircularStd',
                                      color: txt,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    'Lower Strength',
                                    style: TextStyle(
                                      fontFamily: 'CircularStd',
                                      color: blm,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Plan',
                    style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'July, 2021',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: txt,
                ),
              ),
              SizedBox(height: 40),
              Row(
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
                      Text(
                        'Special',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                      Text(
                        'Beach Rea...',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                      Text(
                        'Full - Body',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                      Text(
                        'Challenge',
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today\'s Information',
                    style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SvgPicture.asset('Assets/Icons/circ.svg'),
                ],
              ),
              SizedBox(height: 10),
              Text('July, 2021', style: TextStyle()),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 158,
                        height: 118,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: bord, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Calories',
                                  style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                SvgPicture.asset('Assets/Icons/flame.svg'),
                              ],
                            ),
                            SizedBox(height: 8), // Adjust the spacing as needed
                            Column(
                              children: [
                                Text(
                                  '620.68',
                                  style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4), // Adjust the spacing between '620.68' and 'Kcal'
                                Text(
                                  'Kcal',
                                  style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: txt
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SpeedPage()),
                          );
                        },
                        child: Container(
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
                                  Text(
                                    'Steps',
                                    style: TextStyle(),
                                  ),
                                  Spacer(),
                                  SvgPicture.asset('Assets/Icons/shoe.svg'),
                                ],
                              ),
                              Spacer(),
                              Text('620.68', style: TextStyle()),
                              Text('Kcal', style: TextStyle()),
                            ],
                          ),
                        ),
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Heart',
                              style: TextStyle(
                                fontFamily: 'CircularStd',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset('Assets/Icons/heartt.svg'),
                          ],
                        ),
                        SizedBox(height: 20),
                        SvgPicture.asset('Assets/Icons/shin.svg'),
                        Text(
                          '74',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'bpm',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
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
                        Text(
                          'Invite your friends to get a \n free exercise right away',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
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
    );
  }
}
