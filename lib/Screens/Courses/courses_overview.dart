import 'package:flutter/material.dart';

class CoursesOverView extends StatelessWidget {
  final String title;

  CoursesOverView(
      this.title
      );


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(title),
    ),);
  }
}
