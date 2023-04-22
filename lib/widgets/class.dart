// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Class extends StatelessWidget {
  final String startTime;
  final String courseName;
  final String roomLocation;
  final String teacher;

  Class(
      {required this.startTime,
      required this.courseName,
      required this.roomLocation,
      required this.teacher});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        height: 140,
        child: Row(
          children: [
            Container(
              width: 115,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    startTime.substring(0, 5),
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 87, 87, 87),
                    ),
                  ),
                  Text(
                    startTime.substring(5),
                    style: TextStyle(
                      color: Color.fromARGB(255, 144, 143, 143),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              thickness: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: Color.fromARGB(255, 103, 102, 102),
                      size: 20,
                    ),
                    Text(
                      courseName,
                      style: TextStyle(
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 20,
                      color: Color.fromARGB(255, 103, 102, 102),
                    ),
                    SizedBox(width: 5),
                    Text(
                      roomLocation,
                      style: TextStyle(
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 20,
                      color: Color.fromARGB(255, 103, 102, 102),
                    ),
                    SizedBox(width: 5),
                    Text(
                      teacher,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
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
