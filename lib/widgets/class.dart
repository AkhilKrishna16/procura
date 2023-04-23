// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Class extends StatelessWidget {
  final int period;
  final String courseName;
  final String roomLocation;
  final String teacher;

  Class(
      {required this.period,
      required this.courseName,
      required this.roomLocation,
      required this.teacher});

  String get suffix {
    if (period == 2) {
      return 'nd';
    } else if (period == 3) {
      return 'rd';
    } else if (period == 1) {
      return 'st';
    } else {
      return 'th';
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        padding: EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        height: 140,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$period$suffix',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 87, 87, 87),
                      ),
                    ),
                    Text(
                      'PERIOD',
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
                          fontFamily: 'Poppinss',
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
      ),
    );
  }
}
