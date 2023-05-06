// ignore_for_file: public_member_api_docs

import 'dart:math';

import 'package:flutter/material.dart';

class HelloThere extends StatefulWidget {
  const HelloThere({super.key});

  @override
  State<HelloThere> createState() => _HelloThereState();
}

class _HelloThereState extends State<HelloThere> {
  @override
  Widget build(BuildContext context) {
    // Create a random number generator.
    final random = Random();
    // Create List of font name
    final fontsName = <String>[
      'Alice',
      'Genos',
      'HennyPenny',
      'MarckScript',
      'NanumPenScript',
      'Parisienne',
      'PermanentMarker',
      'PoiretOne',
      'ReenieBeanie',
      'Sacramento',
      'TitanOne',
    ];
    // Initialize width and height to full screen
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    // Get max number to random for fonts
    final maxRandomFont = fontsName.length;
    // Get max number to random for Colors
    const maxRandomColor = 256;
    // Generate a random color.
    Color color = Color.fromRGBO(
      random.nextInt(maxRandomColor),
      random.nextInt(maxRandomColor),
      random.nextInt(maxRandomColor),
      1,
    );
    // Generate a random font.
    String font = fontsName[Random().nextInt(maxRandomFont)];

    return Scaffold(
      body: InkWell(
        onTap: () {
          setState(() {
            color = Color.fromRGBO(
              random.nextInt(maxRandomColor),
              random.nextInt(maxRandomColor),
              random.nextInt(maxRandomColor),
              1,
            );
            font = fontsName[Random().nextInt(maxRandomFont)];
          });
        },
        child: Container(
          width: widthScreen,
          height: heightScreen,
          color: color,
          child: Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontFamily: font,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
