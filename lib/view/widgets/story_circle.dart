import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final String imageUrl;
  final bool hasStory;

  StoryCircle({required this.imageUrl, this.hasStory = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: hasStory
            ? LinearGradient(
          colors: [Colors.yellow, Colors.redAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4), // Halkanın kalınlığı
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}