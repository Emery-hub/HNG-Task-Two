import 'package:flutter/material.dart';
import 'package:hng_task_two/print_name.dart';
import 'package:hng_task_two/user_input.dart';

void main() {
  runApp(MyApp());
  PrintName.printName();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

