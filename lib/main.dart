import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelegramDrawer(),
    );
  }
}

class TelegramDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF527DA3), // Telegram's drawer background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildHeader(),
            _buildMenuItem(Icons.person_add, 'Add Account'),
            _buildMenuItem(Icons.person, 'My Profile'),
            _buildMenuItem(Icons.group_add, 'New Group'),
            _buildMenuItem(Icons.contacts, 'Contacts'),
            _buildMenuItem(Icons.call, 'Calls'),
            _buildMenuItem(Icons.bookmark, 'Saved Messages'),
            _buildMenuItem(Icons.settings, 'Settings'),
            _buildMenuItem(Icons.favorite, 'Invite Friends'),
            _buildMenuItem(Icons.star, 'Telegram Features'),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Heni', style: TextStyle(fontSize: 18)),
      accountEmail: null,
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(
          'H',
          style: TextStyle(fontSize: 24, color: Color(0xFF527DA3)),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF527DA3),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        // Handle menu item tap
      },
    );
  }
}
