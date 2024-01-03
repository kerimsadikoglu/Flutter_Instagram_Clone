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
      final posts = [
        Post(
          username: 'UFC',
          userImage: 'https://pngimg.com/d/ufc_PNG3.png',
          postImage: 'https://i.pinimg.com/originals/a9/c9/b7/a9c9b79c5440b7626366216d9dbe2233.jpg',
          caption: 'MATCH DAY',
          likesCount: 523146,
        ),Post(
          username: 'Galatasaray',
          userImage: 'https://pbs.twimg.com/profile_images/1726935273945096192/elJLNT2L_400x400.jpg',
          postImage: 'https://cdn1.ntv.com.tr/gorsel/PDoFoFMXRUiyzZzq8st3yw.jpg?width=952&height=540&mode=both&scale=both',
          caption: 'Güzel bir gün!',
          likesCount: 328047,
        ),Post(
          username: 'Village Roadshow Pictures',
          userImage: 'https://themeparks.com.au/-/media/project/common/logos/vrtp_logo_outline.jpg',
          postImage: 'https://m.media-amazon.com/images/M/MV5BNjYxZjY3ZDAtNDc1Mi00YzMxLWI4MWEtNzQwZGExYmMzODFhXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_.jpg',
          caption: 'Furiosa: A Mad Max Saga (2024)',
          likesCount: 151590,
        ),Post(
          username: 'Magnus Carlsen ',
          userImage: 'https://cdn.britannica.com/71/223171-004-EBBD4F02.jpg',
          postImage: 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p13283179_p_v10_ao.jpg',
          caption: 'Rotten Tomatoes',
          likesCount: 12449,
        ),Post(
          username: 'Codeway ',
          userImage: 'https://assets-global.website-files.com/6432e45bb03b84bbd0edb786/646a7d0d04299d74ab582ce6_logo-codeway.png',
          postImage: 'https://officesnapshots.com/wp-content/uploads/2021/02/codeway-studios-offices-istanbul.jpg',
          caption: 'Codeway Studios Offices - Istanbul',
          likesCount: 2349,
        ),

      ];
      emit(PostLoadedState(posts: posts));
    });
  }
}
