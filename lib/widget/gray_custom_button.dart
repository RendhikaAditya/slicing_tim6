import 'package:flutter/material.dart';

class GrayCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  GrayCustomButton({required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Colors.grey[200],
            // Menetapkan lebar maksimum sesuai lebar yang tersedia
            minimumSize: Size(constraints.maxWidth, 50),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.grey[850],
                      height: 3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
