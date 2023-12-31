

enum MediaType { image, video }

class StoryItem {
  final String url;
  final MediaType mediaType;
  final Duration duration;

  StoryItem({
    required this.url,
    required this.mediaType,
    required this.duration,
  });
}

class StoryModel {
  final String userName;
  final String profileImageUrl;
  final bool hasStory;
  final int storyNumber;
  final List<StoryItem> storyItems;


  StoryModel({
    required this.userName,
    required this.profileImageUrl,
    this.hasStory = false,
    required this.storyNumber,
    required this.storyItems,
  });
}
