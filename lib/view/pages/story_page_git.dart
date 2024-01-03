import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/story_user.dart';
import 'package:instagram_story_player/view/widgets/video_widget.dart';


import 'package:story/story_page_view.dart';

class StoryPage extends StatelessWidget {

  final int currentIndex;

  StoryPage(this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        initialPage: currentIndex,
        itemBuilder: (context, pageIndex, storyIndex) {
          var user = UserModel.users[pageIndex];
          var story = user.stories[storyIndex];
          UserModel.users[pageIndex].isWatched=1;
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
                    : VideoWidget(videoUrl: story.imageUrl,duration:story.date ,),
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
                    SizedBox(width: 10,),
                    Text(
                      '${story.date}s',
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.grey,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        indicatorDuration: const Duration(seconds: 5),
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
        pageLength: (UserModel.users.length),

        storyLength: (int pageIndex ) {

          return UserModel.users[pageIndex].stories.length;
        },

        onPageLimitReached: () {
          Navigator.pop(context);
        },

      ),
    );
  }
}