import 'package:fitapp/Pages/calender.dart';
import 'package:fitapp/Pages/feed.dart';
import 'package:fitapp/Pages/mappage.dart';
import 'package:fitapp/Pages/speedpage.dart';
import 'package:fitapp/Widgets/cont.dart';
import 'package:fitapp/Widgets/iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollPage extends StatefulWidget {
  const ScrollPage({Key? key});

  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 130.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
            radius: 30,  
            backgroundImage: AssetImage('Assets/Icons/avat.svg'),
          ),
                  Column(
                    children: [
                      Text(
                        'Hello Linh!',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 20),
                      ),
                      Text(
                        'Thursday, 08 July',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 20),
                      ),
                    ],
                  ),
                  ButtonIcon(backgroundColor: Colors.black, 
                          svgPath: 'Assets/Icons/challenge.svg',
                           width: 64,
                            height: 64,
                             radius: 100, 
                             onTap: () {
                               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalenderPage()),
                    );
           
                             },
                             ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                '1 883 Kcal',
                style: TextStyle(fontFamily: 'CircularStd', color: blm, fontSize: 50),
              ),
              Text(
                'Total Kilocalories',
                style: TextStyle(fontFamily: 'CircularStd', color: txt, fontSize: 20),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      
                      Text(
                        '7580 m',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Distance',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      
                      Text(
                        '9832',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Steps',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      
                      Text(
                        '1248',
                        style: TextStyle(fontFamily: 'CircularStd', color: blm),
                      ),
                      Text(
                        'Points',
                        style: TextStyle(fontFamily: 'CircularStd', color: txt),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset('Assets/Images/chart.png'),
              SizedBox(height: 30, width: 1,),
              Row(
                
                children: [
                   
              Container(
                width: 120, // Set the desired width
                height: 120, // Set the desired height
                decoration: BoxDecoration(
                  color: conta,
                  
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                  children: [
                    SvgPicture.asset(
                      'Assets/Icons/dumb.svg',
                      // height: 50,
                      // width: 50,
                      // color: blm,
                    ),
                    SizedBox(height: 10 ,),
                    SizedBox(width: 10,),
                    Row(
                    
                      children: [
                        
                        Text(
                          '628',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: blm,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Kcal',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: blm,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Dumbbell',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w400,
                        color: body,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5,),
              Container(
                width: 120, // Set the desired width
                height: 120, // Set the desired height
                decoration: BoxDecoration(
                  color: conta,
                  
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                  children: [
                    SvgPicture.asset(
                      'Assets/Icons/dumb.svg',
                      // height: 50,
                      // width: 50,
                      // color: blm,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '628',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: blm,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Kcal',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: blm,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Dumbbell',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w400,
                        color: body,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 11,),
              Container(
                width: 120, // Set the desired width
                height: 120, // Set the desired height
                decoration: BoxDecoration(
                  color: conta,
                 
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                  children: [
                    SvgPicture.asset(
                      'Assets/Icons/dumb.svg',
                      // height: 50,
                      // width: 50,
                      // color: blm,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '628',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: blm,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Kcal',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: blm,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Dumbbell',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w400,
                        color: body,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('My Plan', style: TextStyle(fontFamily: 'CircularStd', fontWeight: FontWeight.w700, fontSize: 20 ),),
                      SizedBox(width: 297,),
                      SvgPicture.asset('Assets/Icons/circ.svg')
                    ],
                  ),
                  SizedBox(height: 10),  
                  Text('July, 2021', style: TextStyle(),),
                  
                ],
                
                
              ),
              SizedBox(height: 30,),
               Container(
                height: 198, width: 327 ,
                decoration: BoxDecoration(
                   color: Color.fromRGBO(255, 228, 232, 1),
                  borderRadius: BorderRadius.circular(20)
                ), 

                child: Column(
                  children: [
                    Row(
                      children: [
                     ButtonIcon(backgroundColor: con, 
                          svgPath: 'Assets/Icons/challenge.svg',
                           width: 64,
                            height: 64,
                             radius: 100, 
                             onTap: () {},
                            ),   
                            SizedBox(width: 30,),
                            Column(
                              children: [
                    Text('WEEK 1'),
                    SizedBox(height: 10,),
                    Text('Body Weight'),
                    Text('Workout 1 of 5'), 
                              ],
                            ),
                 
                          ],  
                    ),    
                    SizedBox(height: 40,),
                    Container(
                      height: 64, width: 279,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      
                      child: Column(
                        children: [
                          Row(
                            children: [
                                SvgPicture.asset('Assets/Icons/medal.svg', width: 40, height: 40),
                                SizedBox(width: 20,),
                                Column(
                              children: [
                    SizedBox(height: 10,),
                    Text('Next exercise'),
                    Text('Lower Strength'), 
                              ],
                            ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  
                ), 
                
                
               ),
                SizedBox(height: 30,),
                 Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Recent Plan', style: TextStyle(fontFamily: 'CircularStd', fontWeight: FontWeight.w700, fontSize: 20 ),),
                      SizedBox(width: 200,),
                      Text(
                        'See All'
                      )
                    ],
                  ),
                  SizedBox(height: 10),  
                  Text('July, 2021', style: TextStyle(),),
                  
                ],
                
                
              ),
              SizedBox(height: 20,),
              Row(
                  children: [
                    SizedBox(width: 15,),
                    Column(
                      
                        children: [
                          ButtonIcon(backgroundColor: con, 
                          svgPath: 'Assets/Icons/star.svg',
                           width: 64,
                            height: 64,
                             radius: 18, 
                             onTap: () {},
                             ),
                             Text('Special')
                        ],
                    ),
                    SizedBox(width: 30,),
                      Column(
                        children: [
                          ButtonIcon(backgroundColor: con, 
                          svgPath: 'Assets/Icons/slope.svg',
                           width: 64,
                            height: 64,
                             radius: 18, 
                             onTap: () {},
                             ),
                             Text('Beach Rea...')
                        ],
                    ),
                       SizedBox(width: 20,),
                      Column(
                        children: [
                          ButtonIcon(backgroundColor: con, 
                          svgPath: 'Assets/Icons/trophy.svg',
                           width: 64,
                            height: 64,
                             radius: 18, 
                             onTap: () {},
                             ),
                             Text('Full - Body')
                        ],
                    ),
                       SizedBox(width: 30,),
                      Column(
                        children: [
                          ButtonIcon(backgroundColor: con, 
                          svgPath: 'Assets/Icons/challenge.svg',
                           width: 64,
                            height: 64,
                             radius: 18, 
                             onTap: () {},
                             ),
                             Text('Challenge')
                        ],
                    ),
                    
                    
                  ],
              ),
               SizedBox(height: 30,),
                 Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Today\'s Information', style: TextStyle(fontFamily: 'CircularStd', fontWeight: FontWeight.w700, fontSize: 20 ),),
                      SizedBox(width: 149,),
                      SvgPicture.asset('Assets/Icons/circ.svg')
                    ],
                  ),
                  SizedBox(height: 10),  
                  Text('July, 2021', style: TextStyle(),),
                  
                ],   
              ),
            SizedBox(height: 30,),
               Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 158, height: 118,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border.all(color: bord, width:2),
                        borderRadius: BorderRadius.circular(20),
                         ),
                          child: Row(
                          children: [
                          Text('Calories', style: TextStyle(),),
                          SvgPicture.asset('Assets/Icons/circ.svg')
                          ],
                      ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SpeedPage()),
                    );
           
                        },
                        child: 
                       Container(
                        width: 158, height: 118,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border.all(color: bord, width:2),
                        borderRadius: BorderRadius.circular(20),
                         ),
                       child: Row(
                          children: [
                          Text('Steps', style: TextStyle(),),
                          SvgPicture.asset('Assets/Icons/circ.svg')
                          ],
                      ),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Container(
                        width: 158, height: 252,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border.all(color: bord, width:2),
                        borderRadius: BorderRadius.circular(20),
                         ),            
                      ),
                ],               
               ),
                 SizedBox(height: 50,),
                  Container(
                        width: 367, height: 108,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border.all(color: bord, width:2),
                        borderRadius: BorderRadius.circular(20),
                         ),       
                         child: Row(
                          children: [
                             ButtonIcon(backgroundColor: con, 
                          svgPath: 'Assets/Icons/trophy.svg',
                           width: 64,
                            height: 64,
                             radius: 18, 
                             onTap: () {},
                             ),
                             SizedBox(width: 20,),
                             Column(
                              children: [
                                Text('Invite your friends', style: TextStyle(),),

                                SizedBox(height: 10,),
                                Text('Invite your friends to get a \n free exercise right away', style: TextStyle(),)
                              ],
                             )
                          ],
                         ),     
                      ),
               
                ],  
          ),  
          
           
        ),
        
      ),
      bottomNavigationBar: BottomAppBar(
        color: body,
        shape: CircularNotchedRectangle(),
        elevation: 20, // Set elevation for the bottom app bar
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('Home', style: TextStyle(color: Colors.black)),
                  SizedBox(width: 23),
                  IconButton(
              onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
              },
              icon: SvgPicture.asset('Assets/Icons/location.svg' ),
              
            ),
                ],
              ),
            ),
            SizedBox(width: 1),
            Padding(
              padding: EdgeInsets.only(bottom: 10), // Add vertical padding for center icon
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('Assets/Icons/Play.svg'
                , width: 40,
                height: 40,
                ), // Replace 'YOUR_SVG_FILE_PATH' with the path to your SVG file
              ),
            ),
            SizedBox(width: 27),
            IconButton(
              onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedPage()),
                    );
              },
              icon: SvgPicture.asset('Assets/Icons/heart.svg'),
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('Assets/Icons/medal.svg',),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBarItem(int index, String iconPath, String text) {
    return IconButton(
      icon: _selectedIndex == index
          ? Text(text, style: TextStyle(fontFamily: 'CircularStd', color: Colors.black))
          : SvgPicture.asset(iconPath),
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
