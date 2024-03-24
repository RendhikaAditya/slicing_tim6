// import 'package:flutter/material.dart';

// class ImageCategories extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 10.0,
//         mainAxisSpacing: 10.0,
//         padding: EdgeInsets.all(10.0),
//         children: [
//           _buildImageWidget('assets/images/01.png', 70.0, 76.0),
//           _buildImageWidget('assets/images/02.png', 104.0, 72.0),
//           _buildImageWidget('assets/images/03.png', 125.0, 65.0),
//           _buildImageWidget('assets/images/04.png', 114.0, 82.0),
//           _buildImageWidget('assets/images/05.png', 146.0, 80.0),
//           _buildImageWidget('assets/images/06.png', 152.0, 85.0),
//           _buildImageWidget('assets/images/07.png', 125.0, 69.0),
//           _buildImageWidget('assets/images/08.png', 113.0, 83.0),
//         ],
//       ),
//     );
//   }

//   Widget _buildImageWidget(String imagePath, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.circular(10.0),
//         border: Border.all(
//           color: Colors.grey,
//           width: 1.0,
//         ),
//       ),
//     );
//   }
// }

