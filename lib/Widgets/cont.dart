import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color backgroundColor;

  CustomContainer({required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        
         borderRadius: BorderRadius.circular(40),
      ),
     
      height: 198,
      width: 370,
      
    );
  }
}
