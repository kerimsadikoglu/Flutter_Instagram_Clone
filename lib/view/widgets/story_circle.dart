import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final String imageUrl;
  final int isWatched;

  StoryCircle({required this.imageUrl, this.isWatched = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: isWatched==0
            ? LinearGradient(
          colors: [Colors.yellow, Colors.redAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )
            : LinearGradient(
          colors: [Colors.grey, Colors.grey],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
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