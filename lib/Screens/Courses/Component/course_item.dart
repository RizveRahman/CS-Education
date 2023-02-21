import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Courses/courses_overview.dart';

import '../../../constants.dart';

class CourseItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CourseItem(this.id, this.title, this.imageUrl);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      height: 100,
      width: 100,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CoursesOverView(title)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.network(imageUrl, height: 60,),
          Text(title)
        ],),
      ),
    );
  }
}





// ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: GridTile(
//         footer: GridTileBar(
//           backgroundColor: Colors.black87,
//           leading: IconButton(
//             icon: const Icon(Icons.favorite),
//             color: Theme.of(context).accentColor,
//             onPressed: () {},
//           ),
//           title: Text(
//             title,
//             textAlign: TextAlign.center,
//           ),
//           trailing: IconButton(
//             icon: const Icon(
//               Icons.shopping_cart,
//             ),
//             onPressed: () {},
//             color: Theme.of(context).accentColor,
//           ),
//         ),
//         child: GestureDetector(
//           onTap: () {
//             // Navigator.of(context).pushNamed(
//             //   ProductDetailScreen.routeName,
//             //   arguments: id,
//             //);
//           },
//           child: Image.network(
//             imageUrl,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );