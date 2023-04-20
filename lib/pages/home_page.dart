// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String name;
  final int grade;
  final String nameOfSchool;

  HomePage(
      {required this.name, required this.grade, required this.nameOfSchool});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    print(height);
    print(width);

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: 70.0 / 844 * height, left: 20.0 / 390 * width),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Hi, ${widget.name}',
                      style: TextStyle(
                        fontFamily: 'SourceSans3',
                        fontWeight: FontWeight.w600,
                        fontSize: 22 / 844 * height,
                      ),
                    ),
                    Text(
                      'Grade ${widget.grade}, ${widget.nameOfSchool}',
                      style: TextStyle(
                        fontFamily: 'SourceSans3',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
