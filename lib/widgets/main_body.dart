// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import './class.dart';
import './assignment.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 20.0 / 844 * height,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30 / 390 * width),
              topRight: Radius.circular(30 / 390 * width),
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  bottom: 15.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'MY CLASSES',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 47, 83),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Container(
                  margin: EdgeInsets.zero,
                  height: 350,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Class(
                        courseName: 'Advanced Algebra 1 S2',
                        startTime: '07:00 AM',
                        roomLocation: 'C102',
                        teacher: 'Kadifi Nilovar',
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15.0 / 844 * height,
                  left: 15.0,
                  bottom: 15.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MY ASSIGNMENTS',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 47, 83),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    width: 380,
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return Assignment(
                          dueDate: DateTime(2023, 10, 31),
                          assignmentName: 'Introduction to Linear Functions',
                          course: 'Advanced Algebra 1 S2',
                        );
                      },
                    ),
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
