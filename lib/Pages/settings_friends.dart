import 'package:flutter/material.dart';

import 'profile_edit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CloseFriendsScreen(),
      theme: ThemeData(
        fontFamily: 'CircularStd', 
      ),
    );
  }
}

class CloseFriendsScreen extends StatefulWidget {
  @override
  _CloseFriendsScreenState createState() => _CloseFriendsScreenState();
}

class _CloseFriendsScreenState extends State<CloseFriendsScreen> {
  List<Map<String, dynamic>> friends = [
    {
      "name": "Joseph Martinez",
      "image": "assets2/ivan.png",
      "isCloseFriend": true,
    },
    {
      "name": "Wayne Caldwell",
      "image": "assets2/alex.png",
      "isCloseFriend": true,
    },
    {
      "name": "Wayne Leonard",
      "image": "assets2/linh.png",
      "isCloseFriend": true,
    },
    {
      "name": "Mildred Castillo",
      "image": "assets2/farrah.png",
      "isCloseFriend": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets2/arrow.png'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfileScreen()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Close Friends",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets2/friends.png'),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: friends.length,
              separatorBuilder: (context, index) => const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 1,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(friends[index]["image"]),
                    ),
                    title: Text(
                      friends[index]["name"],
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    trailing: Switch(
                      value: friends[index]["isCloseFriend"],
                      activeColor: Colors.white,
                      activeTrackColor: const Color(0xFFFF6079),
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      onChanged: (value) {
                        setState(() {
                          friends[index]["isCloseFriend"] = value;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Image.asset('assets2/ellipse.png'),
        ],
      ),
    );
  }
}
