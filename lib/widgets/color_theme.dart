// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:procura/pages/gpa_page.dart';
import 'package:procura/pages/student_information_page.dart';

class ColorTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.grey.withOpacity(0.05),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Color Theme',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                      Colors.grey.withOpacity(0.05),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context, '/student_information'),
                  },
                  child: Text(
                    'More Colors',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
                child: Row(
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.zero,
                      splashColor: Colors.white,
                      onPressed: () => {},
                      child: Container(
                        height: 80,
                        width: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 211, 239, 252),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                      height: 80,
                      width: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                      height: 80,
                      width: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                      height: 80,
                      width: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
