import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/story_user.dart';
import 'package:instagram_story_player/view/pages/story_page_git.dart';
import 'package:instagram_story_player/view/widgets/story_circle.dart';

class StoryWidget extends StatelessWidget {
  final UserModel story;
  final int currentIndex; // Add this line

  StoryWidget({
    required this.story,
    required this.currentIndex, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => StoryPage(currentIndex),
          ),
        );
      },

      child: Column(
        children: [
          StoryCircle(
            imageUrl: story.imageUrl,
            isWatched: story.isWatched,
          ),
          SizedBox(height: 6),
          Text(story.userName, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
