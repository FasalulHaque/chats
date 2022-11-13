import 'package:chats/home/chatspage/chatsmodel.dart';
import 'package:flutter/material.dart';

class Detali extends StatelessWidget {
  Detali({
    super.key,
    required this.userrs,
  });
  User userrs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 100,
          leading: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            CircleAvatar(
              backgroundImage: NetworkImage(
                '${userrs.image}',
              ),
            ),
          ]),
          title: Column(
            children: [
              Text(
                '${userrs.name}',
                style: const TextStyle(color: Colors.black),
              ),
              const Text(
                'online',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 4),
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          helperText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    )),
                    FloatingActionButton(
                      onPressed: () {},
                      elevation: 0,
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
