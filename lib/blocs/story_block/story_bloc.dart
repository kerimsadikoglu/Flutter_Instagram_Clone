import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_story_player/models/story_model.dart';

// Story events
abstract class StoryEvent {}

class StoryFetchEvent extends StoryEvent {}

// Story states
abstract class StoryState {}

class StoryInitialState extends StoryState {}

class StoryLoadedState extends StoryState {
  final List<StoryModel> stories;

  StoryLoadedState({required this.stories});
}

class StoryErrorState extends StoryState {}

// Story BLoC
class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc() : super(StoryInitialState()) {
    on<StoryFetchEvent>((event, emit) async {
      final stories = [
      StoryModel(
        userName: 'UFC',
        profileImageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UFC_Logo.svg/640px-UFC_Logo.svg.png',
        hasStory: true,
        storyNumber: 0,
        storyItems: [
          StoryItem(
            url: 'https://i.ebayimg.com/images/g/0YAAAOSwmpZgntXJ/s-l1200.jpg',
            mediaType: MediaType.image,
            duration: Duration(seconds: 5),
          ),
          StoryItem(
            url: 'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',
            mediaType: MediaType.video,
            duration: Duration(seconds: 15), // Video süresi
          ),
          // Daha fazla StoryItem...
        ],
      ),
        StoryModel(
            userName: 'Icardi',
            profileImageUrl: 'https://hlkiurt3.rocketcdn.com/news/ee175bd3936e4441b3071e1bdcc17fb1.jpeg',
            hasStory: true,
            storyNumber: 1,
            storyItems: [
              StoryItem(
                url: 'https://i.ebayimg.com/images/g/0YAAAOSwmpZgntXJ/s-l1200.jpg',
                mediaType: MediaType.image,
                duration: Duration(seconds: 5),
              ),
              StoryItem(
                url: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',
                mediaType: MediaType.video,
                duration: Duration(seconds: 20), // Video süresi
              ),
            ]),
        StoryModel(
            userName: 'Fatih Terim',
            profileImageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Fatih_Terim_2018.jpg/250px-Fatih_Terim_2018.jpg',
            hasStory: true,
            storyNumber: 2,
            storyItems: []),
        StoryModel(
            userName: 'ATATURK',
            profileImageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Ataturk1930s.jpg/220px-Ataturk1930s.jpg',
            hasStory: true,
            storyNumber: 3,
            storyItems: []),
        StoryModel(
            userName: 'Khamzat ',
            profileImageUrl: 'https://www.mmaweekly.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk4NTI0MDEwMTQ3MjkyNjEx/khamzat-chimaev-ufc279cw-750.jpg',
            hasStory: true,
            storyNumber: 4,
            storyItems: []),
        StoryModel(
            userName: 'user1',
            profileImageUrl: '',
            hasStory: true,
            storyNumber: 5,
            storyItems: []),
        // Diğer hikaye modelleri...
      ];
      emit(StoryLoadedState(stories: stories));
    });
  }
}
