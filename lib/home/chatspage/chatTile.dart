// import 'dart:html';

// import 'package:chats/home/chatspage/chatsmodel.dart';
// import 'package:flutter/material.dart';

// class ChatTile extends StatelessWidget {
//   ChatTile({super.key, required this.userdata});
//   User userdata;

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: ListTile(
//         leading:CircleAvatar(
//           backgroundImage: NetworkImage(userdata.image!),
//         ) ,
//         title: Text(userdata.name!),
//         subtitle: Text(userdata.message!),
//         trailing:Text(userdata.time!) ,
//       ),
//     );
//   }
// }

import 'package:chats/home/chatspage/chatsmodel.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  ChatTile({Key? key, required this.UserData}) : super(key: key);

  User UserData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(UserData.image!)),
      title: Text(UserData.name!),
      subtitle: Text(UserData.message!),
      trailing: Text(UserData.updatesAt!),
    );
  }
}
