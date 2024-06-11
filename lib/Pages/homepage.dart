import 'package:fitapp/Widgets/bottomapp.dart';
import 'package:fitapp/Widgets/ImageCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color txt = Color.fromRGBO(127, 127, 127, 1);
  Color blm = Color.fromRGBO(4, 4, 21, 1);
  Color bottom = Color.fromRGBO(255, 228, 232, 1);
  Color bdy = Color.fromRGBO( 255, 255, 255, 1);
  Color txt2 = Color.fromRGBO(127, 127, 127, 1);
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bdy,  
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 80), 
          child: Column(
            children: [
              ContainerGirl(
                leftBottomImage: 'Assets/Images/cont.png',
                rightSideImage: 'Assets/Images/girl.png',
                txt1: 'Today, 8 Jul',
                txt2: '1 883 Kcal',
                buttonText: 'Track your activity', 
              ),
              SizedBox(height: 20.0), 
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '5',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                    SizedBox(width: 20 ,),
                    Text(
                      '6',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                    SizedBox(width: 20 ,),
                    Text(
                      '7 ',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),SizedBox(width: 20 ,),
                    Text(
                      'Today, 8 Jul',
                      style: TextStyle(fontFamily: 'CircularStd', color: blm),
                    ),SizedBox(width: 20 ,),
                    Text(
                      ' 9',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),SizedBox(width: 20 ,),
                    Text(
                      '10',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),SizedBox(width: 20 ,),
                    Text(
                      '11',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                '1 883 Kcal ',
                style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 40),
              ),
              Text(
                ' Total Kilocalories ',
                style: TextStyle(fontFamily: 'CircularStd', color: txt),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5 6 7 ',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                      Text(
                        'Today, 8 Jul',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        ' 9 10 11',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5 6 7 ',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                      Text(
                        'Today, 8 Jul',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        ' 9 10 11',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5 6 7 ',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                      Text(
                        'Today, 8 Jul',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        ' 9 10 11',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset('Assets/Images/chart.png'),
              SizedBox(height: 30), // Add some space between the image and the new container
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'Assets/Images/heart_icon.svg', // Replace with your actual SVG asset path
                      height: 50,
                      width: 50,
                      color: blm,
                    ),
                    SizedBox(height: 10), // Space between icon and text
                    Text(
                      'Heart Rate',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        color: blm,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '75 BPM',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        color: txt,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: SvgPicture.asset('Assets/Icons/your_icon.svg'), // Replace with your actual icon asset path
      ),
      bottomNavigationBar: BottomAppBar(
        color: bottom, // Set the color to match the background
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBottomBarItem(0, 'Assets/Icons/home_icon.svg', 'Home'),
            _buildBottomBarItem(1, 'Assets/Icons/search_icon.svg', 'Search'),
            _buildBottomBarItem(2, 'Assets/Icons/notifications_icon.svg', 'Notifications'),
            _buildBottomBarItem(3, 'Assets/Icons/profile_icon.svg', 'Profile'),
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
