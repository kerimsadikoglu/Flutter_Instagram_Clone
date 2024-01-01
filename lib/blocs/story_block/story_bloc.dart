import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_story_player/models/story_model.dart';
import 'package:instagram_story_player/models/story_user.dart';

// Story events
abstract class StoryEvent {}

class StoryFetchEvent extends StoryEvent {}

// Story states
abstract class StoryState {}

class StoryInitialState extends StoryState {}

class StoryLoadedState extends StoryState {
  final List<UserModel> stories;

  StoryLoadedState({required this.stories});
}

class StoryErrorState extends StoryState {}

// Story BLoC
class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc() : super(StoryInitialState()) {
    on<StoryFetchEvent>((event, emit) async {
      try {
        final stories = UserModel.users;
        emit(StoryLoadedState(stories: stories));
      } catch (e) {
        emit(StoryErrorState());
      }
    });
  }
}
