import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color cal = Color.fromRGBO(255, 223, 228, 1);
    Color bod = Color.fromRGBO(0, 0, 0, 0.5);

    return Scaffold(
      body: Container(
        height: 442,
        decoration: BoxDecoration(
          color: cal,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 56, // Smaller size for the icon container
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black),
                        ),
                        child: SvgPicture.asset(
                          'Assets/Icons/le.svg',
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(width: 60), // Space between icon and text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thursday',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Ci'),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '08 July',
                            style: TextStyle(fontSize: 14, color: bod),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space between text and the second icon
                  SvgPicture.asset(
                    'Assets/Icons/date.svg',
                    
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
