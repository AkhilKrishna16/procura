// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_is_empty

import 'package:flutter/material.dart';

import './class.dart';
import './assignment.dart';

class MainBody extends StatelessWidget {
  var classes = [
    {
      'period': 1,
      'course': 'Advanced Algebra 1 S2',
      'teacher': 'Kadifi Nilovar',
      'roomNumber': 'B123'
    },
    {
      'period': 2,
      'course': 'Spanish 1 S2',
      'teacher': 'Maria Soto',
      'roomNumber': 'B104'
    },
    {
      'period': 3,
      'course': 'ILA 8 Advanced YR',
      'teacher': 'Faizha Piracha',
      'roomNumber': 'C113'
    },
    {
      'period': 4,
      'course': 'US History 8 YR',
      'teacher': 'Jennifer Fredrickson',
      'roomNumber': 'B103',
    },
    {
      'period': 5,
      'course': 'Engineering Design and Innov 7/8 YR',
      'teacher': 'Christoper Cochrane',
      'roomNumber': 'C102',
    }
  ];

  var assignments = [
    {
      'assignmentName': 'Introduction to Linear Functions',
      'grade': '98.00',
    },
    {
      'assignmentName': 'US History Daily Project',
      'grade': 'L',
    },
    {
      'assignmentName': 'Evaluation of Functions',
      'grade': '98.00',
    }
  ];

  bool get expandOrNot {
    if (assignments.length == 0) {
      return true;
    } else {
      return false;
    }
  }

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
                padding: EdgeInsets.only(
                  top: 15.0 / 844 * height,
                  left: 15.0 / 390 * width,
                  bottom: 15.0 / 844 * height,
                ),
                child: Row(
                  children: [
                    Text(
                      'MY CLASSES',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 47, 83),
                        fontFamily: 'Poppins',
                        fontSize: 14 / 844 * height,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.0 / 390 * width,
                  right: 15.0 / 390 * width,
                ),
                child: Container(
                  margin: EdgeInsets.zero,
                  height: expandOrNot ? 450 / 844 * height : 350 / 844 * height,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: classes.length,
                    itemBuilder: (_, index) {
                      return Class(
                        courseName: classes[index]['course'] as String,
                        period: classes[index]['period'] as int,
                        roomLocation: classes[index]['roomNumber'] as String,
                        teacher: classes[index]['teacher'] as String,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15.0 / 844 * height,
                  left: 15.0 / 390 * width,
                  bottom: 15.0 / 390 * width,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NEW ASSIGNMENTS ADDED',
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
                  expandOrNot
                      ? Container(
                          width: 380 / 390 * width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'No New Assignments',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      : MediaQuery.removePadding(
                          context: context,
                          child: Container(
                            height: 120 / 844 * height,
                            width: 380 / 390 * width,
                            child: ListView.builder(
                              padding: EdgeInsets.only(
                                  left: 16.0 / 390 * width, right: 0),
                              scrollDirection: Axis.horizontal,
                              itemCount: assignments.length,
                              itemBuilder: (_, index) {
                                return Assignment(
                                  assignmentName: assignments[index]
                                      ['assignmentName'] as String,
                                  grade: assignments[index]['grade'] as String,
                                );
                              },
                            ),
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
