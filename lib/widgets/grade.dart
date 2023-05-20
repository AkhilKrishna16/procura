// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Grade extends StatelessWidget {
  final String course;
  final double grade;
  final double gradeChange;

  Color get gradeColor {
    if (grade >= 90) {
      return Colors.green.withOpacity(0.4);
    } else if (grade >= 80) {
      return Colors.blue.withOpacity(0.4);
    } else if (grade >= 70) {
      return Colors.yellow.withOpacity(0.4);
    } else if (grade >= 60) {
      return Colors.orange.withOpacity(0.4);
    } else {
      return Colors.red.withOpacity(0.4);
    }
  }

  bool get changeOrNot {
    if (gradeChange != 0.00) {
      return true;
    } else {
      return false;
    }
  }

  Color get gradeChangeColor {
    if (gradeChange > 0) {
      return Colors.green.withOpacity(0.6);
    } else if (gradeChange < 0) {
      return Colors.red.withOpacity(0.6);
    } else {
      return Colors.transparent;
    }
  }

  String get changeString {
    if (gradeChange > 0) {
      return '+';
    }

    return '';
  }

  Grade({required this.course, required this.grade, required this.gradeChange});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                  width: 0.5,
                ),
              ),
              margin: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
              elevation: 1,
              child: SizedBox(
                height: 95,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 8.0 / 844 * height, bottom: 8.0 / 844 * height),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.0,
                      right: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            course,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18 / 844 * height,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                        ),
                        Row(
                          children: [
                            changeOrNot
                                ? Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 28,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: gradeChangeColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(6 / 844 * height),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '$changeString${gradeChange.toStringAsFixed(2)}',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              height: 45,
                              width: 85,
                              decoration: BoxDecoration(
                                color: gradeColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(6 / 844 * height)),
                              ),
                              child: Center(
                                child: Text(
                                  grade.toStringAsFixed(2),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 22 / 844 * height,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
