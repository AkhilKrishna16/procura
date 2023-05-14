// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:procura/widgets/logout_button.dart';

import '../widgets/settings_button.dart';
import '../widgets/color_theme.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
            ),
            Column(
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
                  buttonName: 'Login Security',
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
                  height: 32,
                ),
                ColorTheme(),
                LogoutButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
