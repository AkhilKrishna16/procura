// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../widgets/gpa_box.dart';

class GPAPage extends StatefulWidget {
  @override
  State<GPAPage> createState() => _GPAPageState();
}

class _GPAPageState extends State<GPAPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100 / 844 * height,
        backgroundColor: Color.fromARGB(255, 211, 239, 252),
        elevation: 0.0,
        title: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GPA',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                GPABox(
                  typeOfGPA: 'Unweighted GPA',
                  gpa: '4.79/6.00',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
