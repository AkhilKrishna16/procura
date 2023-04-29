// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class GradesPage extends StatefulWidget {
  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                  'Grades',
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: 350,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                      color: Color.fromARGB(255, 99, 99, 99), width: 1.5),
                ),
                child: TabBar(
                  indicatorPadding: EdgeInsets.all(3),
                  unselectedLabelColor: Color.fromARGB(255, 76, 76, 76),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  tabs: [
                    Tab(
                      text: 'M1',
                    ),
                    Tab(
                      text: 'M2',
                    ),
                    Tab(
                      text: 'M3',
                    ),
                    Tab(
                      text: 'M4',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(child: Text('Marking Period 1')),
            Center(child: Text('Marking Period 2')),
            Center(child: Text('Marking Period 3')),
            Center(child: Text('Marking Period 4')),
          ],
        ),
      ),
    );
  }
}
