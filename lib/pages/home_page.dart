// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';

import '../widgets/main_body.dart';

class HomePage extends StatefulWidget {
  final String name;
  final int grade;
  final String nameOfSchool;
  final String dayType;

  HomePage(
      {required this.name,
      required this.grade,
      required this.nameOfSchool,
      required this.dayType});

  var _isLoading = false;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _goToSettingsPage(BuildContext context) async {
    setState(() {
      widget._isLoading = true;
    });

    await Future.delayed(Duration(milliseconds: 500));

    Navigator.pushReplacementNamed(context, '/settings');

    setState(() {
      widget._isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 239, 252),
      body: widget._isLoading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 70.0 / 844 * height,
                    left: 20.0 / 390 * width,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, ${widget.name.split(' ')[0]}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 24 / 844 * height,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            'Grade ${widget.grade}, ${widget.nameOfSchool}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 18 / 844 * height,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          '${widget.dayType} Day',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                MainBody(),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: 'Settings',
          )
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _goToSettingsPage(context);
          });
        },
      ),
    );
  }
}
