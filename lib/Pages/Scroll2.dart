import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollPage2 extends StatelessWidget {
  const ScrollPage2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: SvgPicture.asset('assets3/Icons/'),
      ),
      bottomNavigationBar:  BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton( 
            icon: SvgPicture.asset('assets3/Icons/'),
            onPressed: () {},
            ),
             IconButton( 
            icon: SvgPicture.asset('assets3/Icons/'),
            onPressed: () {},
            ),
             IconButton( 
            icon: SvgPicture.asset('assets3/Icons/'),
            onPressed: () {},
            ),
             IconButton( 
            icon: SvgPicture.asset('assets3/Icons/'),
            onPressed: () {},
            )
        ],
      ),
      )
    );
  }
}