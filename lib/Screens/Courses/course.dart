import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Courses/Component/course_model.dart';

import 'Component/course_item.dart';


class Course extends StatelessWidget {
  Course({Key? key}) : super(key: key);

  final List<CourseModel> loadedProducts = [
    CourseModel(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      //price: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    CourseModel(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      //price: 59.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    CourseModel(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      //price: 19.99,
      imageUrl:
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    CourseModel(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      //price: 49.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ), itemBuilder: (context, i) => CourseItem(
      loadedProducts[i].id,
      loadedProducts[i].title,
      loadedProducts[i].imageUrl,
    ),
    );
  }
}
