import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/story_model.dart';
import 'package:instagram_story_player/models/story_user.dart';

import 'package:instagram_story_player/view/widgets/story_widget.dart';

class StoriesList extends StatelessWidget {
  final List<UserModel> stories;

  StoriesList({required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(11),
            child: StoryWidget(story: stories[index], currentIndex: index,),
          );
        },
      ),
    );
  }
}