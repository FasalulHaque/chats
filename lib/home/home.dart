
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Conversations',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(left: 8, right: 8, bottom: 2),
                  //   height: 30,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //       color: Colors.pink[50]),
                  //),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.pink,
                      size: 20,
                    ),
                    label: const Text(
                      'Add new',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade100))),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.grey.shade600,
      //   selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      //   unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       label: 'chats',
      //       icon: Icon(
      //         Icons.message,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Channels',
      //       icon: Icon(
      //         Icons.group_work,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Profile',
      //       icon: Icon(
      //         Icons.account_box,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
