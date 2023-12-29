import 'package:flutter_bloc/flutter_bloc.dart';

abstract class StoryEvent {}

class StoryLoadEvent extends StoryEvent {
  // Hikayeleri yüklemek için kullanılan event
}

abstract class StoryState {}

class StoryInitialState extends StoryState {
  // İlk başlangıç durumu
}

class StoryLoadedState extends StoryState {
  // Hikayeler yüklendiğinde kullanılacak durum
}

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc() : super(StoryInitialState());

  @override
  Stream<StoryState> mapEventToState(StoryEvent event) async* {
    if (event is StoryLoadEvent) {
      // Hikayeleri yükleme işlemleri burada yapılır
      yield StoryLoadedState();
    }
  }
}