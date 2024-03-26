import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconWithText({
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.grey,
        ),
        SizedBox(width: 8), // Jarak antara icon dan teks
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
