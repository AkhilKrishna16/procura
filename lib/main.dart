// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import './pages/home_page.dart';
import './pages/settings_page.dart';
import './pages/student_information_page.dart';

void main() => runApp(Procura());

class Procura extends StatefulWidget {
  @override
  State<Procura> createState() => _ProcuraState();

  Map<String, WidgetBuilder> routes = {
    '/home': (context) => HomePage(
          name: 'Arjun Krishnamurthy',
          nameOfSchool: 'University of North Texas',
          dayType: 'B',
        ),
    '/settings': (context) => SettingsPage(),
    '/student_information': (context) => StudentInformationPage(),
  };
}

class _ProcuraState extends State<Procura> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: widget.routes,
      initialRoute: '/home',
    );
  }
}
