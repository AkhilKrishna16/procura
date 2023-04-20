// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import './pages/home_page.dart';

void main() => runApp(Procura());

class Procura extends StatefulWidget {
  @override
  State<Procura> createState() => _ProcuraState();
}

class _ProcuraState extends State<Procura> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        name: 'Josephine Firmstone',
        grade: 07,
        nameOfSchool: 'Junior High School',
      ),
    );
  }
}
