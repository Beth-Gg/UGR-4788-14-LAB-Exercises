part of 'posts_bloc_bloc.dart';

@immutable
abstract class postEvent extends Equatable {
  const postEvent();
}

class LoadPostEvent extends postEvent {
  @override
  List<Object?> get props => [];
}
