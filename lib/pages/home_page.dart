// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/main_body.dart';

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

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 239, 252),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 70.0 / 844 * height, left: 20.0 / 390 * width),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, ${widget.name.split(' ')[0]}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 24 / 844 * height,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'Grade ${widget.grade}, ${widget.nameOfSchool}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 18 / 844 * height,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          MainBody(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          )
        ],
      ),
    );
  }
}
