import 'reward.dart';
import 'package:flutter/material.dart';
import 'route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsPage(),
      theme: ThemeData(
        fontFamily: 'CircularStd', 
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets2/arrow.png', height: 70,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RewardPage()),
            );
          },
        ),
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets2/more.png', height: 70,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RoutePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    '1200',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Kcal',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset('assets2/line.png'),
                  const SizedBox(height: 16),
                  DayRowWidget(),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFBEDEF),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets2/steps.png', height: 60),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Steps',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF787878),
                            ),
                          ),
                          Text(
                            '2,000+',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Image.asset('assets2/graph.png'),
                ],
              ),
            ),
            const SizedBox(height: 70,),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 130, vertical:15,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFB8B8BA),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets2/share.png', height: 25),
                    const SizedBox(width: 8),
                    const Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF111111),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DayRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildDayText('Sat', false),
        buildDayText('Sun', false),
        buildDayText('Mon', false),
        buildDayText('Tue', true),
        buildDayText('Wed', false),
        buildDayText('Thr', false),
        buildDayText('Fri', false),
      ],
    );
  }

  Widget buildDayText(String day, bool isSelected) {
    return Text(
      day,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: isSelected ? const Color(0xFFFF6079) : Colors.grey,
      ),
    );
  }
}
