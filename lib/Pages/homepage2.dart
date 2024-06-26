import 'package:fitapp/Widgets/bottomapp.dart';
import 'package:fitapp/Widgets/ImageCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

 class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: const Center(
        child: ContainerGirl(
          leftBottomImage: 'Assets/Images/cont.png',
          rightSideImage: 'Assets/Images/girl.png',
          txt1: 'Today, 8 Jul',
          txt2: '1 883 Kcal',
          buttonText:
              'Track your activity', // You can set this to null if no button is needed
        ),
      ),
    );
  }
}