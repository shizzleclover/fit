import 'package:fitapp/Pages/feeddetail.dart';
import 'package:fitapp/Pages/homepage.dart';
import 'package:fitapp/Pages/mappage.dart';
 
import 'package:fitapp/Pages/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int _selectedIndex = -1;

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
                  prefixIcon: SvgPicture.asset('Assets/Icons/se.svg',
                  height: 30,
                  width: 30,
                  ),
                  suffixIcon: SvgPicture.asset('Assets/Icons/Filter.svg'),
                  hintText: 'Search friends or neighbors',
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                 Image.asset('Assets/Images/roun.png'),
                  SizedBox(width: 30),
                   Image.asset('Assets/Images/roun2.png'),
                  SizedBox(width: 30),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      border: Border.all(color: conta),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgPicture.asset('Assets/Images/'),
                  ),
                  SizedBox(width: 30),
                    Image.asset('Assets/Images/roun2.png'),
                ],
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyFeedDetails()),
                    );
                },
                child: Container(
                  height: 386,
                  width: 360,
                  decoration: BoxDecoration(
                    border: Border.all(color: bord),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0), // Add padding around the entire content
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the elements vertically
                      crossAxisAlignment: CrossAxisAlignment.center, // Center the elements horizontally
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('Assets/Images/roun2.png'),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Linh Nguyen'),
                                SizedBox(height: 5),
                                Text('2s ago'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text('I am very happy to be with Cafit in'),
                        SizedBox(height: 5),
                        Text('training sessions and how about you?'),
                        SizedBox(height: 20),
                        Image.asset('Assets/Images/exe.png'),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center the row elements horizontally
                          children: [
                            SvgPicture.asset('Assets/Icons/love.svg'),
                            SizedBox(width: 5),
                            Text('121'),
                            SizedBox(width: 30),
                            SvgPicture.asset('Assets/Icons/comment.svg'),
                            SizedBox(width: 5),
                            Text('34'),
                            SizedBox(width: 30),
                            SvgPicture.asset('Assets/Icons/share.svg'),
                            SizedBox(width: 5),
                            Text('Share'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: body,
        shape: CircularNotchedRectangle(),
        elevation: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: SvgPicture.asset('Assets/Icons/hoe.svg'),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage()),
                );
              },
              icon: SvgPicture.asset('Assets/Icons/l.svg'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'Assets/Icons/Play.svg',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Text('Social', style: TextStyle(color: Colors.black)),
                SvgPicture.asset('Assets/Icons/Dot.svg'),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('Assets/Icons/medal.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
