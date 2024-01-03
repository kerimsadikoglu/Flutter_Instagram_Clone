import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_story_player/blocs/story_block/post_bloc.dart';
import 'package:instagram_story_player/blocs/story_block/story_bloc.dart';

import 'package:instagram_story_player/view/widgets/custom_appbar.dart';
import 'package:instagram_story_player/view/widgets/post_widget.dart';
import 'package:instagram_story_player/view/widgets/story_list.dart';
import 'package:instagram_story_player/view/widgets/custom_instagram_bottom_bar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StoryBloc>(
          create: (context) => StoryBloc()..add(StoryFetchEvent()),
        ),
        BlocProvider<PostBloc>(
          create: (context) => PostBloc()..add(PostFetchEvent()),
        ),
      ],
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            BlocBuilder<StoryBloc, StoryState>(
              builder: (context, storyState) {
                if (storyState is StoryLoadedState) {
                  return StoriesList(stories: storyState.stories);
                } else {
                  return CircularProgressIndicator(); // Hikayeler yüklenirken gösterilecek widget
                }
              },
            ),
            Divider(height: 1, color: Colors.grey[300]),
            Expanded(
              child: BlocBuilder<PostBloc, PostState>(
                builder: (context, postState) {
                  if (postState is PostLoadedState) {
                    return ListView.builder(
                      itemCount: postState.posts.length,
                      itemBuilder: (context, index) {
                        return PostWidget(post: postState.posts[index]);
                      },
                    );
                  } else {
                    return CircularProgressIndicator(); // Gönderiler yüklenirken gösterilecek widget
                  }
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomInstagramBottomBar(),
      ),
    );
  }
}
