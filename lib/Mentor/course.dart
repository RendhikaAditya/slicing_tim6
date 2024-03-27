import 'package:flutter/material.dart';

class CourseMentor extends StatelessWidget {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtPrice;
  final String txtRating;
  final String txtStudent;

  CourseMentor({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtPrice,
    required this.txtRating,
    required this.txtStudent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.network(
              urlImage,
              fit: BoxFit.cover,
              height: 130,
              width: 130,
            ),
          ),
          SizedBox(width: 8), // Spacer between image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            // color: Colors.orange,
                            // borderRadius: BorderRadius.circular(5),
                            ),
                        child: Text(
                          txtCategori,
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.bookmark_outline, color: Colors.green),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    txtTitle,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        '\$$txtPrice ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        '$txtRating  |  $txtStudent',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
