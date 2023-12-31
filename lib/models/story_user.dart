enum MediaType { image, video }

class UserModel {
  UserModel(
      this.stories, {
        required this.userName,
        required this.imageUrl,
        required this.index,
      });

  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;
  final int index;
}

class StoryModel {
  StoryModel({
    required this.imageUrl,
    required this.mediatpy,
    required this.duration,
  });

  final String imageUrl;
  final MediaType mediatpy;
  final int duration;
}

final users = [
  UserModel(
    userName: "UFC",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UFC_Logo.svg/640px-UFC_Logo.svg.png",
    index: 0,
    [
      StoryModel(
        imageUrl: "https://i.ebayimg.com/images/g/0YAAAOSwmpZgntXJ/s-l1200.jpg",
        mediatpy: MediaType.image, // Bu bir görüntü (resim)
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        mediatpy: MediaType.video, // Bu bir video
        duration: 15,
      ),
    ],
  ),
  UserModel(
    userName: "Icardi",
    imageUrl: "https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg",
    index: 1,
    [
      StoryModel(
        imageUrl: "https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg",
        mediatpy: MediaType.image, // Bu bir görüntü (resim)
        duration: 5,
      ),
    ],
  ),
  UserModel(
    userName: "Fatih Terim",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
    index: 2,
    [
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
        mediatpy: MediaType.image, // Bu bir görüntü (resim)
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
        mediatpy: MediaType.image, // Bu bir görüntü (resim)
        duration: 5,
      ),
    ],
  ),
  UserModel(
    userName: "ATATURK",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg",
    index: 3,
    [
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg",
        mediatpy: MediaType.image, // Bu bir görüntü (resim)
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg",
        mediatpy: MediaType.image,
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg",
        mediatpy: MediaType.image,
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg",
        mediatpy: MediaType.image,
        duration: 5,
      ),
    ],
  ),
  UserModel(
    userName: "Khamzat",
    imageUrl: "https://www.mmaweekly.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk4NTI0MDEwMTQ3MjkyNjEx/khamzat-chimaev-ufc279cw-750.jpg",
    index: 4,
    [
      StoryModel(
        imageUrl: "https://m.media-amazon.com/images/M/MV5BODg5ODY2ZTEtZGY0ZC00MzljLWJhMDUtNmU0YWJmMjQ1M2UwXkEyXkFqcGdeQXVyMTk4MDgwNA@@._V1_.jpg",
        mediatpy: MediaType.image, // Bu bir görüntü (resim)
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://m.media-amazon.com/images/M/MV5BODg5ODY2ZTEtZGY0ZC00MzljLWJhMDUtNmU0YWJmMjQ1M2UwXkEyXkFqcGdeQXVyMTk4MDgwNA@@._V1_.jpg",
        mediatpy: MediaType.image, // Bu bir video
        duration: 5,
      ),
      StoryModel(
        imageUrl: "https://m.media-amazon.com/images/M/MV5BODg5ODY2ZTEtZGY0ZC00MzljLWJhMDUtNmU0YWJmMjQ1M2UwXkEyXkFqcGdeQXVyMTk4MDgwNA@@._V1_.jpg",
        mediatpy: MediaType.image, // Bu bir video
        duration: 5,
      ),
    ],
  ),
];
