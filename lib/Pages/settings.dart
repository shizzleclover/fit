import 'package:flutter/material.dart';
import 'settings_friends.dart';
import 'stats.dart';
import 'workout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
      theme: ThemeData(
        fontFamily: 'CircularStd', 
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/arrow.png'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StatsPage()),
            );
          },
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/more.png'),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Account', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17)),
          const SizedBox(height: 15),
          Row(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/tillie.png'),
              ),
              const SizedBox(width: 16),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Linh Nguyen',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Pro', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 25),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Image.asset('assets/location_icon.png', height: 200, width: 200),
            ),
            title: const Text('Location', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
          ),
          const SizedBox(height: 25),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Image.asset('assets/notification_icons.png', height: 200, width: 200),
            ),
            title: const Text('Notification', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
            onTap: () {
              // Handle notification tap
            },
          ),
          const SizedBox(height: 25),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Image.asset('assets/close_friends_icons.png', height: 200, width: 200),
            ),
            title: const Text('Close Friends', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CloseFriendsScreen()));
            },
          ),
          const SizedBox(height: 25),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Image.asset('assets/sound_icon.png', height: 200, width: 200),
            ),
            title: const Text('Sounds', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
            onTap: () {
              // Handle sounds tap
            },
          ),
          const SizedBox(height: 25),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Image.asset('assets/privacy_icon.png', height: 200, width: 200),
            ),
            title: const Text('Privacy', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
            onTap: () {
              // Handle privacy tap
            },
          ),
        ],
      ),
    );
  }
}
