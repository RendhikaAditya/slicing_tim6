
import 'package:flutter/cupertino.dart';

class ImageSlider extends StatelessWidget {
  final List<String> imageList;
  final int currentIndex;
  final Function(int) onPageChanged;

  ImageSlider({
    required this.imageList,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: imageList.length,
      controller: PageController(
        initialPage: currentIndex,
        viewportFraction: 0.8,
      ),
      onPageChanged: onPageChanged,
      itemBuilder: (BuildContext context, int index) {
        return _buildImageSlider(imageList[index]);
      },
    );
  }

  Widget _buildImageSlider(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}