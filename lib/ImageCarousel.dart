import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/images/1.jpg'),
        new AssetImage('assets/images/1.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 2),
    );
  }
}
