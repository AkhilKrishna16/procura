// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class GPABox extends StatelessWidget {
  final String typeOfGPA;
  final String gpa;

  GPABox({required this.typeOfGPA, required this.gpa});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(9)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 1.0),
            color: Colors.grey,
            spreadRadius: 0.2,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            typeOfGPA,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            gpa.substring(0, 4),
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            gpa.substring(4),
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 25,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
