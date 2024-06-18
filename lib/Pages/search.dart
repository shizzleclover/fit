import 'package:fitapp/Pages/messagesext.dart';
import 'package:flutter/material.dart';
import 'messages.dart';
import 'reward.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
      theme: ThemeData(
        fontFamily: 'CircularStd',
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Search', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Image.asset('assets/arrow.png', height: 60),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/more.png', height: 60),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RewardPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchBar(),
          ),
          Expanded(
            child: PostListView(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search friends or neighbors',
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.tune),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class PostListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostWidget(
          username: 'Linh Nguyen',
          timestamp: '2s ago',
          content: 'I am very happy to be with Cafit in training sessions and how about you?',
          profilePicPath: 'assets/linh.png',
          postImagePath: 'assets/gear.png',
          likes: 121,
          comments: 34,
        ),
        PostWidget(
          username: 'Ivan Morais',
          timestamp: '5 mins ago',
          content: 'Sample post content for Ivan Morais',
          profilePicPath: 'assets/ivan.png',
          postImagePath: 'assets/gear.png',
          likes: 50,
          comments: 10,
        ),
      ],
    );
  }
}

class PostWidget extends StatelessWidget {
  final String username;
  final String timestamp;
  final String content;
  final String profilePicPath;
  final String postImagePath;
  final int likes;
  final int comments;

  PostWidget({
    required this.username,
    required this.timestamp,
    required this.content,
    required this.profilePicPath,
    required this.postImagePath,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(profilePicPath),
              ),
              title: Text(username),
              subtitle: Text(timestamp),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(content),
            ),
            Image.asset(postImagePath),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PostActions(likes: likes, comments: comments),
            ),
          ],
        ),
      ),
    );
  }
}

class PostActions extends StatelessWidget {
  final int likes;
  final int comments;

  PostActions({required this.likes, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/heart.png', height: 30),
            SizedBox(width:5),
            Text(likes.toString()),
          ],
        ),
        Row(
          children: [
            Image.asset('assets/chat.png', height: 30),
            SizedBox(width:5),
            Text(comments.toString()),
          ],
        ),
        Image.asset('assets/share.png', height: 30),
      ],
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/home.png', height: 30),
            Image.asset('assets/location.png', height: 30),
            Image.asset('assets/play.png', height: 60),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Social", style: TextStyle(color: Colors.black, fontSize: 18)),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            IconButton(
            icon: Image.asset('assets/award.png', height: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RewardPage()),
              );
            },
          ),
          ],
        ),
      ),
    );
  }
}