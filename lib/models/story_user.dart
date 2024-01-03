enum MediaType { image, video }

class StoryModel {
  StoryModel({
    required this.imageUrl,
    required this.mediatpy,
    required this.duration,
  });

  String imageUrl;
  MediaType mediatpy;
  int duration;
}

class UserModel {
  UserModel({
    required this.userName,
    required this.imageUrl,
    required this.index,
    required this.stories,
    required this.lastStory,
  });

  List<StoryModel> stories;
  String userName;
  String imageUrl;
  int index;
  int lastStory;

  static  List<UserModel> users = [
    UserModel(
      userName: "UFC",
      imageUrl: "https://pngimg.com/d/ufc_PNG3.png",
      index: 0,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://i.ebayimg.com/images/g/0YAAAOSwmpZgntXJ/s-l1200.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
        StoryModel(
          imageUrl: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
          mediatpy: MediaType.video,
          duration: 15,
        ),
        StoryModel(
          imageUrl: "https://c9n8c2u8.rocketcdn.me/wp-content/uploads/2022/05/Boxing-or-MMA-Night-Flyer-Template.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),
    UserModel(
      userName: "Icardi",
      imageUrl: "https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg",
      index: 1,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://fikirturu.com/wp-content/uploads/2023/05/260520231-1080x720.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),UserModel(
      userName: "King James",
      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/LeBron_James_Lakers.jpg/220px-LeBron_James_Lakers.jpg",
      index: 2,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://cdn.britannica.com/19/233519-050-F0604A51/LeBron-James-Los-Angeles-Lakers-Staples-Center-2019.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),
    UserModel(
      userName: "Fatih Terim",
      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg",
      index: 3,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),StoryModel(
          imageUrl: "https://cdn1.img.sputniknews.com.tr/img/07e5/06/03/1044648321_0:0:2627:1970_1920x0_80_0_0_110a10574bbe15e960214faf654cb251.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
        StoryModel(
          imageUrl: "https://simashaber.com/resimler/2023-12/29/10097611847733.webp",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),
    UserModel(
      userName: "travisscott",
      imageUrl: "https://pbs.twimg.com/profile_images/634514155261833216/czgYrPLQ_400x400.jpg",
      index: 4,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://m.media-amazon.com/images/I/81nFF-rXdRL._UF1000,1000_QL80_.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
        StoryModel(
          imageUrl: "https://media.pitchfork.com/photos/5e0f6f452ff48f0008f567cb/master/pass/jackboys_travis.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),StoryModel(
          imageUrl: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
          mediatpy: MediaType.video,
          duration: 5,
        ),
        StoryModel(
          imageUrl: "https://beats-rhymes-lists.com/wp-content/uploads/2023/07/travis-scott-illustration-1200x800-1-960x800.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),

      ],
    ),
    UserModel(
      userName: "Khamzat",
      imageUrl: "https://www.mmaweekly.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk4NTI0MDEwMTQ3MjkyNjEx/khamzat-chimaev-ufc279cw-750.jpg",
      index: 5,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://sportshub.cbsistatic.com/i/r/2022/04/06/df56f4e6-a74e-4156-8405-60e38dfd2399/thumbnail/1200x675/93bbb67978124edcd6520e546aa10b92/khamzat-chimaev-celebrate.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),UserModel(
      userName: "YTU",
      imageUrl: "https://www.ytuyildiz.store/ytu-arac-etiketi-yatay-turkce-85x5cm-184-kirtasiye-ytu-yildiz-teknik-universitesi-250-99-B.jpg",
      index: 6,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://cdn-yb.ams3.cdn.digitaloceanspaces.com/uploads/universities/76/svjqa7lPSRW4scCn5cb879f00adc3.jpeg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),UserModel(
      userName: "DRAKE",
      imageUrl: "https://hips.hearstapps.com/hmg-prod/images/drake_photo_by_prince_williams_wireimage_getty_479503454.jpg",
      index: 7,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://variety.com/wp-content/uploads/2019/05/drake-raptor.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),StoryModel(
          imageUrl: "https://media.vanityfair.com/photos/5cf8300e39ba09a1499d91f1/master/pass/Drake-and-Draymond-Green.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),UserModel(
      userName: "Tom Hardy",
      imageUrl: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/269411_v9_bd.jpg",
      index: 7,
      lastStory : 0,
      stories: [
        StoryModel(
          imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Tom_Hardy_by_Gage_Skidmore.jpg/800px-Tom_Hardy_by_Gage_Skidmore.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),StoryModel(
          imageUrl: "https://media.gq.com/photos/56d4902a9acdcf20275ef34c/16:9/w_2560%2Cc_limit/tom-hardy-lead-840.jpg",
          mediatpy: MediaType.image,
          duration: 5,
        ),
      ],
    ),
  ];
}
