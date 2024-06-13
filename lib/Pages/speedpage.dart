import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({super.key});

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
      appBar: AppBar(),
      body: Center( // Use Center to center the column in the Scaffold body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align the children to the start
          children: [
            Padding(
              padding:   EdgeInsets.only(top: 0.0, bottom: 0), // Add padding to bring the container lower
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
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Steps', style: TextStyle(fontFamily: 'CircularStd', fontSize: 24, fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            Text('1 240 Steps', style: TextStyle(fontFamily: 'CircularStd', fontSize: 16, fontWeight: FontWeight.w400, color: txt),),

            SizedBox(height: 10,),
            Container(
              height: 34,
              width: 327,
              decoration: BoxDecoration(
                color: tim,
                borderRadius: BorderRadius.circular(50)
              ),
              
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 27,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child:
                    Center(
                    child: 
                     Text('Daily', style: TextStyle(color: conta, fontSize: 14, fontFamily: 'CircularStd', fontWeight: FontWeight.w700),),
                     ),
                  ),
                  SizedBox(width: 50,),
                  Text('Weekly', style: TextStyle(),),
                  SizedBox(width: 50,),
                  Text('Monthly', style: TextStyle(),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Today', style: TextStyle(color: txt, fontFamily: 'CircularStd', fontWeight: FontWeight.w400, fontSize: 14),),
            SizedBox(height: 20,),
            Text('Thu, 08 July', style: TextStyle(color: blm, fontSize: 24, fontWeight: FontWeight.w700, fontFamily: 'CircularStd'),),

            SizedBox(height: 20,),
            SvgPicture.asset('Assets/Images/')
          ],
          
        ),
      
      ),
      
    );
  }
}
