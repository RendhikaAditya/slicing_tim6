
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalListCategoriHome extends StatefulWidget {
  final List<String> categories;

  const HorizontalListCategoriHome({Key? key, required this.categories}) : super(key: key);

  @override
  _HorizontalListCategoriHomeState createState() => _HorizontalListCategoriHomeState();
}

class _HorizontalListCategoriHomeState extends State<HorizontalListCategoriHome> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, // Set the height according to your need
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[100]
              ),
              child: Text(
                widget.categories[index],
                style: TextStyle(
                  color: _selectedIndex == index ? Colors.blue : Colors.grey[500],
                  fontWeight: _selectedIndex == index ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}