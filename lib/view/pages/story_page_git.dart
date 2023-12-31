import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/story_user.dart';
import 'package:instagram_story_player/view/widgets/video_widget.dart';

import 'package:story/story_page_view.dart';

class StoryPageGit extends StatelessWidget {

  final int currentIndex;


  StoryPageGit(this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        initialPage: currentIndex,
        itemBuilder: (context, pageIndex, storyIndex) {
          //pageIndex += currentIndex;
          final user = users[pageIndex];
          final story = user.stories[storyIndex];
          return Stack(
            children: [
              Positioned.fill(
                child: Container(color: Colors.black),
              ),
              Positioned.fill(
                child: story.mediatpy == MediaType.image
                    ? Image.network(
                  story.imageUrl,
                  fit: BoxFit.cover,
                )
                    : VideoWidget(videoUrl: story.imageUrl,duration:story.duration ,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(user.imageUrl),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      user.userName,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        indicatorDuration: const Duration(seconds: 10),
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 32),
              child: IconButton(
                padding: EdgeInsets.zero,
                color: Colors.white,
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },



        initialStoryIndex: (pageIndex) {
          if (pageIndex == 0) {
            return 0;
          }
          return 0;
        },
        pageLength: (users.length),

        storyLength: (int pageIndex ) {
          //pageIndex += currentIndex;
          return users[pageIndex].stories.length;
        },

        onPageLimitReached: () {
          Navigator.pop(context);
        },

      ),
    );
  }
}