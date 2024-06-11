import 'package:fitapp/Pages/Scroll.dart';
import 'package:flutter/material.dart';

class ContainerGirl extends StatelessWidget {
  final String leftBottomImage;
  final String rightSideImage;
  final String txt1;
  final String txt2;
  final String? buttonText;
  final double? height;
  final double? width;
  final double borderRadius;

  const ContainerGirl({
    Key? key,
    this.buttonText,
    required this.leftBottomImage,
    required this.rightSideImage,
    required this.txt1,
    required this.txt2,
    this.height,
    this.width,
    this.borderRadius = 16.0, // Default border radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color con = Color.fromRGBO(255, 96, 121, 1);
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height ?? 200,  // Adjust the height as needed
        width: width ?? 369,  // Use provided width or default to 300
        color: con, // Constant color
        child: Stack(
          children: [
            // Image in the left bottom corner
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                leftBottomImage,
              ),
            ),
            // Image extending out the container to the screen
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              
               
                child: Image.asset(
                  rightSideImage,
                 
                ),
               
            ),
             
            Positioned(
              left: 16,  
              bottom: 16,  
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt1,
                    style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'CircularStd', fontWeight: FontWeight.w400 ),
                  ),
                  
                  Text(
                    txt2,
                    style: TextStyle(color: Colors.white, fontSize: 30,  fontWeight: FontWeight.bold),
                  ),
                  if (buttonText != null) ...[
                    SizedBox(height: 6),
                    ElevatedButton(
                      
                      onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScrollPage()),
                    );
                      },
                      child: Text(
                        buttonText!,
                        style: TextStyle(color: con, fontFamily: 'Inter' , fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
