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
  Color bdy = Color.fromRGBO(255, 255, 255, 1);
  Color txt2 = Color.fromRGBO(127, 127, 127, 1);
  Color bord = Color.fromRGBO(191, 191, 191, 1);
  Color body = Color.fromRGBO(255, 255, 255, 1);
  Color con = Color.fromRGBO(255, 96, 121, 1);
  Color conta = Color.fromRGBO(255, 96, 121, 1);

  Widget buildContainer() {
    return Container(
      width: 120, // Set the desired width
      height: 120, // Set the desired height
      decoration: BoxDecoration(
        color: conta,
        borderRadius: BorderRadius.circular(28),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
        children: [
          SvgPicture.asset(
            'Assets/Icons/dumb.svg',
            // height: 50,
            // width: 50,
            // color: blm,
          ),
          SizedBox(height: 10),
          SizedBox(width: 10),
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
              SizedBox(width: 10),
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
    );
  }

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
                    SizedBox(width: 20),
                    Text(
                      '6',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '7 ',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 103,
                      height: 24,
                      decoration: BoxDecoration(
                         color: Color.fromRGBO(255, 228, 232, 1),
                         borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text(
                          'Today, 8 Jul',
                          style: TextStyle(fontFamily: 'CircularStd', color: blm),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      ' 9',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '10',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '11',
                      style: TextStyle(fontFamily: 'CircularStd', color: txt),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                '1 883 Kcal',
                style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 40),
              ),
              Text(
                'Total Kilocalories',
                style: TextStyle(fontFamily: 'CircularStd', color: txt),
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
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        '7580 m',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Steps',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        '1248 m',
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
              Image.asset('Assets/Images/chart.png'),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // Change this line
                children: [
                  SizedBox(width: 40), // Add padding to move the container to the right
                  buildContainer(),
                   SizedBox(width: 40), // Add padding to move the container to the right
                  buildContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Image.asset('Assets/Images/semicircle.png'),
    );
  }
}
