import 'package:flutter/material.dart';

class SearchWithFilter extends StatefulWidget {
  final String hintText;

  SearchWithFilter({
    required this.hintText,
  });

  @override
  _SearchWithFilterState createState() => _SearchWithFilterState();
}

class _SearchWithFilterState extends State<SearchWithFilter> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white10, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          prefixIcon: Icon(Icons.search),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {

              });
            },
            child: Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue
              ),
              child: Icon(
                Icons.account_tree_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
