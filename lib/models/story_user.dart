class UserModel {
  UserModel(
      this.stories, {
        required this.userName,
        required this.imageUrl,
      });

  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;
}

class StoryModel {
  StoryModel({
    required this.imageUrl,
    required this.isVideo,
  });

  final String imageUrl;
  final bool isVideo;
}

final users = [
  UserModel(
    userName: "UFC",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UFC_Logo.svg/640px-UFC_Logo.svg.png",
    [
      StoryModel(
        imageUrl: "https://i.ebayimg.com/images/g/0YAAAOSwmpZgntXJ/s-l1200.jpg",
        isVideo: false, // Bu bir görüntü (resim)
      ),
      StoryModel(
        imageUrl: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        isVideo: true, // Bu bir video
      ),
    ],
  ),
  UserModel(
    userName: "Icardi",
    imageUrl: "https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg",
    [
      StoryModel(
        imageUrl: "https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg",
        isVideo: false, // Bu bir görüntü (resim)
      ),
    ],
  ),
  UserModel(
    userName: "Fatih Terim",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
    [
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
        isVideo: false, // Bu bir görüntü (resim)
      ),
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
        isVideo: false, // Bu bir görüntü (resim)
      ),
    ],
  ),
];
