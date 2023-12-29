import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/story_model.dart';
import 'package:instagram_story_player/view/pages/StoryViewer.dart';
import 'package:instagram_story_player/view/widgets/story_circle.dart';


class StoryWidget extends StatelessWidget {
  final StoryModel story;

  StoryWidget({required this.story});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator kullanarak StoryViewer sayfasına yönlendirme yap
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => StoryViewer(story: story),
          ),
        );
      },
      child: Column(
        children: [
          StoryCircle(
            imageUrl: story.profileImageUrl,
            hasStory: story.hasStory,
          ),
          SizedBox(height: 6),
          Text(story.userName, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
