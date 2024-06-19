import 'package:fitapp/Pages/messagesext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
      Color txt = Color.fromRGBO(127, 127, 127, 1);
    Color bord = Color.fromRGBO(191, 191, 191, 1);
    Color blm = Color.fromRGBO(4, 4, 21, 1);
    Color bottom = Color.fromRGBO(255, 228, 232, 1);
    Color body = Color.fromRGBO(255, 255, 255, 1);
    Color con = Color.fromRGBO(255, 96, 121, 1);
    Color conta = Color.fromRGBO(255, 96, 121, 1);
    return Scaffold(
       backgroundColor: body,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 90.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    
                   
                     Image.asset('Assets/Images/roun2.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Linh\'s Post',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MessagePage()),
                      );
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'Assets/Icons/chat.svg',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
             TextField(
  decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.0),
      borderSide: BorderSide(color: txt),
    ),
    prefixIcon: SizedBox(
      height: 30,
      width: 30,
      child: SvgPicture.asset('Assets/Icons/se.svg'),
    ),
    suffixIcon: SizedBox(
      height: 30,
      width: 30,
      child: SvgPicture.asset('Assets/Icons/Filter.svg'),
    ),
    hintText: 'Search friends or neighbors',
    contentPadding: EdgeInsets.symmetric(vertical: 20.0),
  ),
),

              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: conta,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgPicture.asset('Assets/Icons/abb.svg',
                    height: 10,
                    width: 10,
                   
                    ),
                  ),
                  SizedBox(width: 30),
                   
                     Image.asset('Assets/Images/roun2.png'),
                  
                  SizedBox(width: 30),
                    SizedBox(width: 30),
                   
                     Image.asset('Assets/Images/roun.png'),
                  SizedBox(width: 30),
                    SizedBox(width: 30),
                   
                     Image.asset('Assets/Images/roun.png'),
                ],
              ),
              SizedBox(height: 30,),
Row(
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Row(
        children: [
          Image.asset('Assets/Images/roun.png'),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Text('Tillie Larson',  style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 15, fontWeight: FontWeight.w700),
),
              SizedBox(height: 8),
              Text('This afternoon at 5:30PM',style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 12, fontWeight: FontWeight.w200),
),
            ],
          ),
          SizedBox(width: 60),
          Text('1 min'),
        ],
      ),
    ),
  ],
),
SizedBox(height: 30,),
Row(
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Row(
        children: [
          Image.asset('Assets/Images/roun2.png'),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Text('Tillie Larson',  style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 15, fontWeight: FontWeight.w700),
),
              SizedBox(height: 8),
              Text('This afternoon at 5:30PM',style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 12, fontWeight: FontWeight.w200),
),
            ],
          ),
          SizedBox(width: 60),
          Text('1 min'),
        ],
      ),
    ),
  ],
),SizedBox(height: 30,),
Row(
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Row(
        children: [
          Image.asset('Assets/Images/roun.png'),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Text('Tillie Larson',  style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 15, fontWeight: FontWeight.w700),
),
              SizedBox(height: 8),
              Text('This afternoon at 5:30PM',style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 12, fontWeight: FontWeight.w200),
),
            ],
          ),
          SizedBox(width: 60),
          Text('1 min'),
        ],
      ),
    ),
  ],
),SizedBox(height: 30,),
Row(
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Row(
        children: [
          Image.asset('Assets/Images/roun.png'),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Text('Tillie Larson',  style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 15, fontWeight: FontWeight.w700),
),
              SizedBox(height: 8),
              Text('This afternoon at 5:30PM',style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 12, fontWeight: FontWeight.w200),
),
            ],
          ),
          SizedBox(width: 60),
          Text('1 min'),
        ],
      ),
    ),
  ],
),       
SizedBox(height: 30,),
Row(
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Row(
        children: [
          Image.asset('Assets/Images/roun.png'),
          SizedBox(width: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Text('Tillie Larson',  style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 15, fontWeight: FontWeight.w700),
),
              SizedBox(height: 8),
              Text('This afternoon at 5:30PM',style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 12, fontWeight: FontWeight.w200),
),
            ],
          ),
          SizedBox(width: 60),
          Text('1 min'),
        ],
      ),
    ),
  ],
),     ],
       ),
      ),
      ),
    );
  }
}