// story_page.dart dosyası içinde
import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/post_model.dart';
import 'package:instagram_story_player/models/story_model.dart';
import 'package:instagram_story_player/view/widgets/custom_appbar.dart';
import 'package:instagram_story_player/view/widgets/post_widget.dart';
import 'package:instagram_story_player/view/widgets/story_list.dart';

import '../widgets/custom_instagram_bottom_bar.dart';  // CustomInstagramBottomBar'ı import edin

class StoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Örnek verileri burada oluşturun veya bir BLoC'tan alın
    final List<StoryModel> stories = [
      StoryModel(userName: 'Icardi', imageUrl: 'https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg', hasStory: true),
      StoryModel(userName: 'Fatih Terim', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg', hasStory: true),
      StoryModel(userName: 'ATATURK', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg', hasStory: true),
      StoryModel(userName: 'Khamzat ', imageUrl: 'https://www.mmaweekly.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk4NTI0MDEwMTQ3MjkyNjEx/khamzat-chimaev-ufc279cw-750.jpg', hasStory: true),
      StoryModel(userName: 'user1', imageUrl: '', hasStory: true),
      // Diğer hikaye modelleri...
    ];
    // Örnek gönderi verileri
    final List<Post> posts = [
      Post(
        username: 'Galatasaray',
        userImage: 'https://pbs.twimg.com/profile_images/1726935273945096192/elJLNT2L_400x400.jpg',
        postImage: 'https://cdn1.ntv.com.tr/gorsel/PDoFoFMXRUiyzZzq8st3yw.jpg?width=952&height=540&mode=both&scale=both',
        caption: 'Güzel bir gün!',
        likesCount: 328047,
      ),Post(
        username: 'Fenerbahçe',
        userImage: 'https://upload.wikimedia.org/wikipedia/tr/8/86/Fenerbah%C3%A7e_SK.png',
        postImage: 'https://media04.ligtv.com.tr/img/news/2023/7/31/iste-fenerbahcenin-avrupa-karnesi-2/640_415/fenerkarne.jpg',
        caption: 'Süper Kupa!',
        likesCount: 251590,
      ),Post(
        username: 'Galatasaray',
        userImage: 'https://pbs.twimg.com/profile_images/1726935273945096192/elJLNT2L_400x400.jpg',
        postImage: 'https://cdn1.ntv.com.tr/gorsel/PDoFoFMXRUiyzZzq8st3yw.jpg?width=952&height=540&mode=both&scale=both',
        caption: 'Güzel bir gün!',
        likesCount: 328047,
      ),
      // Diğer gönderiler...
    ];

    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          // Yatay hikaye listesini gösteren widget
          StoriesList(stories: stories),
          Divider(height: 2, color: Colors.black),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return PostWidget(post: posts[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomInstagramBottomBar(), // BottomAppBar ekleyin
    );
  }
}
