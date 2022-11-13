import 'package:chats/chatDetali/singlechats/singlechatsdeatil.dart';
import 'package:chats/dasboard/dashboard.dart';
import 'package:chats/home/home.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashbard(),
    );
  }
}
