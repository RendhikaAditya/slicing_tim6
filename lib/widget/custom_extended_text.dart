import 'package:flutter/material.dart';

class ExtendedTextView extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign textAlign;
  final TextOverflow overflow;

  const ExtendedTextView({
    Key? key,
    required this.text,
    this.style = const TextStyle(),
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.clip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Text(
              text,
              style: style,
              textAlign: textAlign,
              overflow: overflow,
            ),
          ),
        );
      },
    );
  }
}