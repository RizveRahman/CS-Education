import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/post_overview.dart';
import 'package:flutter_auth/constants.dart';


class PostItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  PostItem(
      this.id,
      this.title,
      this.description,
      this.imageUrl
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => PostOverView(title)));
      },
      child: Container(
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),

        height: 5,
        width: double.infinity,
        child: Column(children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            SizedBox(width: 10,),
            Text(title),
            ],
          ),

          Text(description)

          ],
        ),
      ),
    );
  }
}
