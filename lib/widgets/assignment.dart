// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  final String assignmentName;
  final String grade;

  Assignment({
    required this.assignmentName,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.0, bottom: 4.0),
      child: Container(
        height: 120,
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 211, 239, 252),
          borderRadius: BorderRadius.all(Radius.circular(9)),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 0.1,
              offset: Offset(0.0, 0.5),
              color: Color.fromARGB(255, 193, 193, 193),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  assignmentName,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  grade,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
