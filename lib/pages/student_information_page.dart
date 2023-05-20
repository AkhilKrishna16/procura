// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StudentInformationPage extends StatefulWidget {
  @override
  State<StudentInformationPage> createState() => _StudentInformationPageState();
}

class _StudentInformationPageState extends State<StudentInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 75,
        backgroundColor: Color.fromARGB(255, 211, 239, 252),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          child: Text(
            'Student Information',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey,
                    blurRadius: 1,
                  )
                ],
              ),
              height: 150,
              width: 360,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                          )
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Text(
                          'A',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Arjun Krishnamurthy',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
