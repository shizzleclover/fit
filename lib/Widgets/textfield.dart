import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String leftIconPath;
  final String rightIconPath;

  CustomTextField({
    required this.hintText,
    required this.leftIconPath,
    required this.rightIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          leftIconPath.isNotEmpty
              ? SvgPicture.asset(
                  leftIconPath,
                  width: 24,
                  height: 24,
                )
              : SizedBox(),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
          rightIconPath.isNotEmpty
              ? SvgPicture.asset(
                  rightIconPath,
                  width: 24,
                  height: 24,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
