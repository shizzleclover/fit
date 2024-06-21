import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'feed.dart';
import 'messages.dart';

class MyFeedDetails extends StatefulWidget {
  const MyFeedDetails({Key? key}) : super(key: key);

  @override
  State<MyFeedDetails> createState() => _MyFeedDetailsState();
}

class _MyFeedDetailsState extends State<MyFeedDetails> {
  @override
  Widget build(BuildContext context) {
    Color txt = Color.fromRGBO(127, 127, 127, 1);
    Color bord = Color.fromRGBO(191, 191, 191, 1);
    Color body = Color.fromRGBO(255, 255, 255, 1);

    return Scaffold(
      backgroundColor: body,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, MaterialPageRoute(builder: (context) => FeedPage()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black),
                        ),
                        child: SvgPicture.asset('Assets/Icons/la.svg'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Linh\'s Post',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: txt,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'Assets/Icons/circ.svg',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyFeedDetails()));
                  },
                  child: Container(
                    height: 386,
                    width: 360,
                    decoration: BoxDecoration(
                      border: Border.all(color: bord),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               
                                 Image.asset('Assets/Images/roun2.png'),
                              
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Linh Nguyen', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),),
                                  SizedBox(height: 5),
                                  Text('2s ago',style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text('I am very happy to be with Cafit in', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
                                  ),),
                           
                          Text('training sessions and how about you?', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
                                  ),),
                          SizedBox(height: 20),
                          Image.asset('Assets/Images/exe.png'),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('Assets/Icons/love.svg', height: 30, width: 30),
                              SizedBox(width: 5),
                              Text('121'),
                              SizedBox(width: 30),
                              SvgPicture.asset('Assets/Icons/comment.svg', height: 30, width: 30),
                              SizedBox(width: 5),
                              Text('34'),
                              SizedBox(width: 30),
                              SvgPicture.asset('Assets/Icons/share.svg', height: 30, width: 30),
                              SizedBox(width: 5),
                              Text('Share'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 30),
                    Text('Comments', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w200,
                                  ),),
                    SizedBox(width: 239),
 
                       SvgPicture.asset('Assets/Icons/circ.svg'),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    
                        Image.asset('Assets/Images/roun.png'),
                    
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),),
                        SizedBox(height: 4),
                        Text('2s ago'),
                      ],
                    ),
                    SizedBox(width: 200),
                    SizedBox(
 
                      child: SvgPicture.asset('Assets/Icons/love.svg'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Thanks CaFit is a good support tool and', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),),
                Text('I love it 💪', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),),
                SizedBox(height: 40),
                Row(
                  children: [
                    
                    Image.asset('Assets/Images/roun.png'),
                    
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jeremy Thompson', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),),
                        SizedBox(height: 4),
                        Text('2s ago'),
                      ],
                    ),
                    SizedBox(width: 130),
                    SizedBox(
 
                      child: SvgPicture.asset('Assets/Icons/love.svg'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Thanks CaFit is a good support tool and', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),),
                Text('I love it 💪', style: TextStyle(
                                    fontFamily: 'CircularStd',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),),
                SizedBox(height: 40),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: SizedBox(
              height: 65,
              width: 65,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
                },
                shape: CircleBorder(),
                backgroundColor: Colors.black,
                child: SvgPicture.asset(
                  'Assets/Icons/chat.svg',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
