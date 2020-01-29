import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ParallaxCard extends StatelessWidget {
  final String image;
  final double offset;
  final PageController controller;

  const ParallaxCard({Key key, this.image, this.offset, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 60),
          child: child,
        );
      },
      child: Card(
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: image,
            alignment: Alignment(offset.abs() * 0.5, 0),
            fit: BoxFit.cover,
            fadeInDuration: Duration(seconds: 1),
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
