import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_story_player/models/story_model.dart';
import 'package:instagram_story_player/models/story_user.dart';

abstract class StoryEvent {}

class StoryLoad extends StoryEvent {}

class StoryTap extends StoryEvent {}

class StoryPause extends StoryEvent {}

class StoryResume extends StoryEvent {}

// story_state.dart
abstract class StoryState {}

class StoryInitial extends StoryState {}

class StoryLoaded extends StoryState {
  final List<UserModel> stories;
  final int currentIndex;

  StoryLoaded({required this.stories, this.currentIndex = 0});
}

class StoryPaused extends StoryState {}