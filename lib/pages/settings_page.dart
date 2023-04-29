// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:procura/widgets/logout_button.dart';

import '../widgets/settings_button.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 211, 239, 252),
        elevation: 0.0,
        title: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
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
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 15, right: 15),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.5,
                              spreadRadius: 0.5,
                              offset: Offset(0.0, 1.0),
                              color: Color.fromARGB(255, 138, 137, 137),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 88, 88, 88),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 22),
                      Text(
                        'Arjun Krishnamurthy',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SettingsButton(
                  buttonName: 'Student Information',
                  buttonIcon: Icons.person,
                  navigationRoute: '/student_information',
                ),
                SettingsButton(
                  buttonName: 'Contact Teachers',
                  buttonIcon: Icons.email,
                  navigationRoute: '/student_information',
                ),
                SettingsButton(
                  buttonName: 'Student Credentials',
                  buttonIcon: Icons.security,
                  navigationRoute: '/student_information',
                ),
                SettingsButton(
                  buttonName: 'Formal Grade Report',
                  buttonIcon: Icons.edit_document,
                  navigationRoute: '/student_information',
                ),
                SettingsButton(
                  buttonName: 'Attendance',
                  buttonIcon: Icons.calendar_month,
                  navigationRoute: '/student_information',
                ),
                SettingsButton(
                  buttonName: 'About Procura',
                  buttonIcon: Icons.app_registration,
                  navigationRoute: '/student_information',
                ),
                SizedBox(
                  height: 22,
                ),
                LogoutButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
