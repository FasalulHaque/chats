import 'package:chats/channel/channel.dart';
import 'package:chats/chatDetali/singlechats/singlechatsdeatil.dart';

import 'package:chats/home/chatspage/chatspage.dart';

import 'package:chats/profile/profile.dart';
import 'package:flutter/material.dart';

class Dashbard extends StatefulWidget {
  const Dashbard({super.key});

  @override
  State<Dashbard> createState() => _DashbardState();
}

class _DashbardState extends State<Dashbard> {
  int _selectedindex = 0;

  void _onltemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _widgets = [
    ChatScreen(),
    const Channel(),
    const Profil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'chats',
            icon: Icon(
              Icons.message,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Channels',
            icon: Icon(
              Icons.group_work,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.account_box,
            ),
          ),
        ],
        currentIndex: _selectedindex,
        // selectedItemColor: Colors.yellow,
        onTap: _onltemTapped,
      ),
    );
  }
}
