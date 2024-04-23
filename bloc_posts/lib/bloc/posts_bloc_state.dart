part of 'posts_bloc_bloc.dart';



@immutable
sealed class PostsBlocState extends Equatable{}

class postLoadingState extends PostsBlocState {
  @override
  List<Object?> get props => [];
}

class postLoadedState extends PostsBlocState {
  final List<postModel> posts;
  postLoadedState(this.posts);
  @override
  List<Object?> get props => [posts];
}

class postErrorState extends PostsBlocState {
  final String error;
  postErrorState(this.error);
  @override
  List<Object?> get props => [error];
}