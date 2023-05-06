// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:tast/hello_there/hello_there_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HelloThere(),
    );
  }
}
