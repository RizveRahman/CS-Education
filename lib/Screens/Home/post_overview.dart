import 'package:flutter/material.dart';

class PostOverView extends StatelessWidget {
  final String title;

  PostOverView(
      this.title,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
