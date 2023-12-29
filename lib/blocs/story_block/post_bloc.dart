import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_story_player/models/post_model.dart';

// Post events
abstract class PostEvent {}

class PostFetchEvent extends PostEvent {}

// Post states
abstract class PostState {}

class PostInitialState extends PostState {}

class PostLoadedState extends PostState {
  final List<Post> posts;

  PostLoadedState({required this.posts});
}

class PostErrorState extends PostState {}

// Post BLoC
class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitialState()) {
    on<PostFetchEvent>((event, emit) async {
      // Verileri yükleme işlemini burada gerçekleştirin
      // Burada sabit bir liste kullanabilirsiniz:
      final posts = [
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
      emit(PostLoadedState(posts: posts));
    });
  }
}
