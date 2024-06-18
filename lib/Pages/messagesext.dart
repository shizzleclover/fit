import 'package:flutter/material.dart';
import 'search.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'CircularStd',
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets22/tillie.png'),
              radius: 30,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tillie Larson',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  'online',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 106, 106, 106),
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Image.asset('assets2/more.png', height: 50),
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ActivitySection(),
            SizedBox(height: 20),
            Divider(),
            Expanded(child: ChatSection()),
            MessageInputSection(),
          ],
        ),
      ),
    );
  }
}

class ActivitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Color(0xFFD7D7D7), width: 1),
      ),
      child: Row(
        children: [
          Image.asset('assets22/cycling.png', height: 60),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Outdoor Cycling',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
              ),
              Text(
                '24 mins',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Image.asset('assets22/streak.png', height: 30),
              SizedBox(width: 5),
              Text(
                '1282 Kcal',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatBubble(
          message: 'After practice time, I love Cafit very much and I took up the challenge with my friend',
        ),
        SenderBubble(
          chatmessage: 'Join me in this challenge, it\'s very interesting. Join now 💪',
        ),
      ],
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFFF6079),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: Color(0xDDFFFFFF),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class SenderBubble extends StatelessWidget {
  final String chatmessage;

  const SenderBubble({required this.chatmessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 180, // Set a height for the map
          width: 300, // Make the container take the full width of the column
          child: Image.asset(
            'assets22/map.png',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets22/tillie.png'),
              radius: 30,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    chatmessage,
                    style: TextStyle(
                      color: Color(0xDD000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MessageInputSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.attach_file),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type message...',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(Icons.location_on),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
