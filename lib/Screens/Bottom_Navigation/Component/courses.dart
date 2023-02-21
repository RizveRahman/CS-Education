import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Courses/course.dart';
import 'package:flutter_auth/Screens/Courses/courses_overview.dart';

import '../../../constants.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorShade200,
      appBar: AppBar(
        title: const Center(
            child: Text('Courses')
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Course()
    );
  }
}
