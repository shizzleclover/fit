import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color txt = Color.fromRGBO(127, 127, 127, 1);
    Color bord = Color.fromRGBO(191, 191, 191, 1);
    Color blm = Color.fromRGBO(4, 4, 21, 1);
    Color bottom = Color.fromRGBO(255, 228, 232, 1);
    Color body = Color.fromRGBO(255, 255, 255, 1);
    Color con = Color.fromRGBO(255, 96, 121, 1);
    Color conta = Color.fromRGBO(255, 96, 121, 1);
    Color tim = Color.fromRGBO(255, 228, 232, 1);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0.0, bottom: 0),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: tim,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'Assets/Icons/shoe.svg',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Steps',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1 240 Steps',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: txt,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 34,
                width: 327,
                decoration: BoxDecoration(
                  color: tim,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Daily',
                          style: TextStyle(
                            color: conta,
                            fontSize: 14,
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Text('Weekly', style: TextStyle()),
                    SizedBox(width: 50),
                    Text('Monthly', style: TextStyle()),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          color: txt,
                          fontFamily: 'CircularStd',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Thu, 08 July',
                        style: TextStyle(
                          color: blm,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'CircularStd',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SvgPicture.asset('Assets/Images/ocean.svg', height: 200,),
              Divider(color: bord, height: 2,),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('4880', style: TextStyle(fontSize: 36)),
                        Text('Total Kilocalories'),
                      ],
                    ),
                    SizedBox(width: 8), // Add some space between the text and the icon
                    Container(
                      height: 17,
                      width: 38,
                      decoration: BoxDecoration(
                        color: conta,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('Assets/Icons/cp.svg',),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                      Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('480', style: TextStyle(fontSize: 24)),
                        SizedBox(width: 8),
                        SvgPicture.asset('Assets/Icons/your_icon.svg'), 
                                              ],
                    ),
                    SizedBox(height: 5),
                    Text('Calories', style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(width: 20,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('480', style: TextStyle(fontSize: 24)),
                        SizedBox(width: 8),
                        SvgPicture.asset('Assets/Icons/your_icon.svg'), 
                                              ],
                    ),
                    SizedBox(height: 5),
                    Text('Calories', style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 40,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('480', style: TextStyle(fontSize: 24)),
                        SizedBox(width: 8),
                        SvgPicture.asset('Assets/Icons/your_icon.svg'), 
                                              ],
                    ),
                    SizedBox(height: 5),
                    Text('Calories', style: TextStyle(fontSize: 16)),
                  ],
                ),
                ],
              ),
               
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                     Row(
                children: [
                      Text('Friends Activity', style: TextStyle(),),
                      SizedBox(width: 280,),
                      SvgPicture.asset('Assets/Icons/circ.svg')
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: 327,
                height: 72,

                decoration: BoxDecoration(
                  border: Border.all(color: bord),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(height: 20,),
               Container(
                width: 327,
                height: 72,

                decoration: BoxDecoration(
                  border: Border.all(color: bord),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
                ],
              ),
             
            ],

          ),
        ),
      ),
    );
  }
}

