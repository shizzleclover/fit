import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(0, 'assets2/home.png', 'Home'),
            _buildNavItem(1, 'assets2/location.png', 'Map'),
            ImageIconButton(onTap: () => onItemTapped(2)),
            _buildNavItem(3, 'assets2/hearticon.png', 'Social'),
            _buildNavItem(4, 'assets2/award.png', 'Reward'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String imagePath, String text) {
    bool isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 30,
            height: 30,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          if (isSelected && text.isNotEmpty)
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
        ],
      ),
    );
  }
}

class ImageIconButton extends StatelessWidget {
  final VoidCallback onTap;

  ImageIconButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        padding: EdgeInsets.all(0),
      ),
      child: Image.asset(
        'assets2/play.png',
        width: 90,
        height: 90,
      ),
    );
  }
}