import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color txt = Color.fromRGBO(127, 127, 127, 1);
    Color bord = Color.fromRGBO(191, 191, 191, 1);
    Color blm = Color.fromRGBO(4, 4, 21, 1);
    Color tim = Color.fromRGBO(255, 228, 232, 1);
    Color conta = Color.fromRGBO(255, 96, 121, 1);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: tim,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SvgPicture.asset('assets2/Icons/shoe.svg'),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Text('Weekly', style: TextStyle()),
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
            SvgPicture.asset('assets2/Images/ocean.svg', height: 200),
            SizedBox(height: 20),
            Divider(color: bord, height: 2),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '4880',
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Total Kilocalories',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        color: txt,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Container(
                  height: 17,
                  width: 38,
                  decoration: BoxDecoration(
                    color: conta,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets2/Icons/cp.svg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '480',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset('assets2/Icons/your_icon.svg'),
                        ],
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Calories',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'CircularStd',
                          fontWeight: FontWeight.w700,
                          color: txt,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '480',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset('assets2/Icons/your_icon.svg'),
                        ],
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Calories',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'CircularStd',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '480',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset('assets2/Icons/your_icon.svg'),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Calories',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'CircularStd',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 40),
                    Text(
                      'Friends Activity',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        color: txt,
                      ),
                    ),
                    SizedBox(width: 200),
                    SvgPicture.asset('assets2/Icons/circ.svg'),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  width: 327,
                  height: 72,
                  decoration: BoxDecoration(
                    border: Border.all(color: bord),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                           
                          ),
                          child: Image.asset('assets2/Images/roun2.png'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Alfred Owen', style: TextStyle(fontSize: 16, fontFamily: 'CircularStd', fontWeight: FontWeight.w700)),
                            SizedBox(height: 5,),
                            Text('400 Calories ', style: TextStyle(fontSize: 14,  fontFamily: 'CircularStd', color: txt)),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      SvgPicture.asset('assets2/Icons/shoe.svg'),
                      SizedBox(width: 8),
                      Text('2.1k Steps', style: TextStyle(fontSize: 12, fontFamily: 'CircularStd', fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 327,
                  height: 72,
                  decoration: BoxDecoration(
                    border: Border.all(color: bord),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                           
                          ),
                          child: Image.asset('assets2/Images/roun.png'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Linh Nguyen', style: TextStyle(fontSize: 12, fontFamily: 'CircularStd', fontWeight: FontWeight.w700)),
                            SizedBox(height: 5,),
                            Text('400 Calories ', style: TextStyle(fontSize: 14, color: txt)),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                    SvgPicture.asset('assets2/Icons/shoe.svg'),
                      SizedBox(width: 8),
                      Text('2.1k Steps', style: TextStyle(fontSize: 12, fontFamily: 'CircularStd', fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
