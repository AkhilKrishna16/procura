// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  final String assignmentName;
  final DateTime dueDate;
  final String course;

  Assignment(
      {required this.assignmentName,
      required this.dueDate,
      required this.course});

  Color get assignmentColor {
    if (dueDate.day - DateTime.now().day > 5) {
      return Colors.green.withOpacity(0.2);
    } else if (dueDate.day - DateTime.now().day < 5) {
      return Colors.red.withOpacity(0.2);
    } else {
      return Colors.blue.withOpacity(0.2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          color: assignmentColor,
          borderRadius: BorderRadius.all(Radius.circular(9)),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: assignmentColor.withOpacity(0.7),
                    radius: 5.5,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '${dueDate.day - DateTime.now().day} days left',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 28, 28, 28),
                    ),
                  ),
                ],
              ),
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
                padding: EdgeInsets.only(
                  left: 8.0,
                  right: 4.0,
                ),
                child: Text(
                  course,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    overflow: TextOverflow.ellipsis,
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
