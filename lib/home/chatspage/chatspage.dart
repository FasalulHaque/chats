import 'package:chats/chatDetali/chatdeatil.dart';
import 'package:chats/home/chatspage/chatTile.dart';
import 'package:chats/home/chatspage/chatsmodel.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  List<User> Users = [
    User(
        name: 'FASALUL HAQUE',
        message: 'HELLO',
        image:
            ('https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg'),
        isGroup: false,
        updatesAt: '4am'),
    User(
        name: 'HAQUE',
        image:
            ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqUe6-coLY2LyQTaBHjhg0OESsXPsvs8c2FQIlr1ZoHA&s'),
        message: 'Hi',
        isGroup: false,
        updatesAt: ' 5am'),
    User(
        name: 'FLUTTER',
        image: (''),
        message: 'H',
        isGroup: true,
        updatesAt: ' 90am'),
    User(
        name: 'DART',
        image: ('https://www.memezero.com/media/memes/ED402N.jpg'),
        message: 'Hii',
        isGroup: true,
        updatesAt: ' 2am'),
    User(
        name: 'MRJ',
        image:
            ('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHBlcnNvbnxlbnwwfHwwfHw%3D&w=1000&q=80'),
        message: 'Hw',
        isGroup: false,
        updatesAt: ' 8am'),
    User(
        name: 'NEROJ',
        image: (''),
        message: 'Hw',
        isGroup: false,
        updatesAt: ' 8am'),
    User(
        name: 'FASALUL HAQUE',
        message: 'HELLO',
        image:
            ('https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg'),
        isGroup: false,
        updatesAt: '4am'),
    User(
        name: 'HAQUE',
        image:
            ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqUe6-coLY2LyQTaBHjhg0OESsXPsvs8c2FQIlr1ZoHA&s'),
        message: 'Hi',
        isGroup: false,
        updatesAt: ' 5am'),
    User(
        name: 'FLUTTER',
        image: (''),
        message: 'H',
        isGroup: true,
        updatesAt: ' 90am'),
    User(
        name: 'DART',
        image: ('https://www.memezero.com/media/memes/ED402N.jpg'),
        message: 'Hii',
        isGroup: true,
        updatesAt: ' 2am'),
    User(
        name: 'MRJ',
        image:
            ('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHBlcnNvbnxlbnwwfHwwfHw%3D&w=1000&q=80'),
        message: 'Hw',
        isGroup: false,
        updatesAt: ' 8am'),
    User(
        name: 'NEROJ',
        image: (''),
        message: 'Hw',
        isGroup: false,
        updatesAt: ' 8am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Conversations',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        // ElevatedButton(
                        //     onPressed: () {},
                        Container(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top: 2, bottom: 2),
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.pink[50]),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.add,
                                color: Colors.pink,
                                size: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Add New",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
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
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Users.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detali(
                                userrs: Users[index],
                              ))),
                  child: ChatTile(
                    UserData: Users[index],
                  ),
                );
              },
            )
          ],
        ),
      ),

      // body: SingleChildScrollView(
      //   physics: ScrollPhysics(),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       SafeArea(
      //         child: Padding(
      //           padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               const Text(
      //                 'Conversations',
      //                 style:
      //                     TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //               ),
      //               ElevatedButton.icon(
      //                 onPressed: () {},
      //                 icon: const Icon(
      //                   Icons.add,
      //                   color: Colors.pink,
      //                   size: 20,
      //                 ),
      //                 label: const Text(
      //                   'Add new',
      //                   style: TextStyle(
      //                     color: Colors.pink,
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       TextField(
      //         decoration: InputDecoration(
      //             hintText: 'Search',
      //             hintStyle: TextStyle(
      //               color: Colors.grey.shade600,
      //             ),
      //             prefixIcon: Icon(
      //               Icons.search,
      //               color: Colors.grey.shade600,
      //               size: 20,
      //             ),
      //             filled: true,
      //             fillColor: Colors.grey.shade100,
      //             contentPadding: const EdgeInsets.all(8),
      //             enabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                 borderSide: BorderSide(color: Colors.grey.shade100))),
      //       ),
      //       ListView.builder(
      //         physics: NeverScrollableScrollPhysics(),
      //         itemCount: Users.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return InkWell(
      //             onTap: () => Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => Detali(
      //                           userrs: Users[index],
      //                         ))),
      //             child: ChatTile(
      //               UserData: Users[index],
      //             ),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
