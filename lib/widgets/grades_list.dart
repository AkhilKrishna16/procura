// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './grade.dart';

class GradesList extends StatelessWidget {
  final List grades;

  GradesList({required this.grades});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView.builder(
        padding: EdgeInsets.only(
          top: 0,
          bottom: 40,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Grade(
            course: 'ILA Advanced Year S2 ',
            grade: 88.1,
            gradeChange: -0.01,
          );
        },
      ),
    );
  }
}
