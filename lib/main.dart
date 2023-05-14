// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:procura/pages/gpa_page.dart';

import './pages/home_page.dart';
import './pages/settings_page.dart';
import './pages/student_information_page.dart';
import './pages/grades_page.dart';

void main() => runApp(Procura());

class Procura extends StatefulWidget {
  @override
  State<Procura> createState() => _ProcuraState();

  Map<String, WidgetBuilder> routes = {
    '/home': (context) => HomePage(
          name: 'Arjun Krishnamurthy',
          nameOfSchool: 'Pearson Middle School',
          dayType: 'B',
        ),
    '/gpa': (context) => GPAPage(),
    '/settings': (context) => SettingsPage(),
    '/student_information': (context) => StudentInformationPage(),
    '/grades': (context) => GradesPage(),
  };
}

class _ProcuraState extends State<Procura> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: widget.routes,
      initialRoute: '/settings',
    );
  }
}
