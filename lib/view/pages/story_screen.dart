/*

import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/story_model.dart';
import 'package:instagram_story_player/view/widgets/video_widget.dart';
import 'package:story/story_page_view.dart'; // StoryModel'ı içe aktarın

class StoryPageVis extends StatelessWidget {
  final StoryModel storyModel; // StoryModel verisini alacak değişken

  StoryPageVis({required this.storyModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          final storyItem = storyModel.storyItems[storyIndex]; // StoryModel içinden ilgili hikayeyi alın
          return Stack(
            children: [
              Positioned.fill(
                child: Container(color: Colors.black),
              ),
              Positioned.fill(
                child: storyItem.mediaType == MediaType.image
                    ? Image.network(
                  storyItem.url,
                  fit: BoxFit.cover,
                )
                    : VideoWidget(videoUrl: storyItem.url,duration: 10,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(storyModel.profileImageUrl),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      storyModel.userName,
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
          return 0; // İlk hikayeden başlatmak için
        },
        pageLength: 1, // Sadece bir sayfa
        storyLength: (int pageIndex) {
          return storyModel.storyItems.length; // Hikaye uzunluğunu StoryModel içinden alın
        },
        onPageLimitReached: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}*/
