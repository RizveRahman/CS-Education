import 'package:flutter/material.dart';

import '../../constants.dart';
import 'Component/post_item.dart';
import 'Component/post_model.dart';

class Newspost extends StatelessWidget {
  Newspost({Key? key}) : super(key: key);

  final List<Post> loadedPost = [
    Post(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red! ',
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Post(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      // price: 59.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Post(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      //price: 19.99,
      imageUrl:
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Post(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      //   price: 49.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorShade200,
      appBar: AppBar(title: const Text('CS Edu'),
        backgroundColor: kPrimaryColor,),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedPost.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), itemBuilder: (context, i) => PostItem(
          loadedPost[i].id,
          loadedPost[i].title,
          loadedPost[i].description,
          loadedPost[i].imageUrl
      ),
      ),
    );;
  }
}
