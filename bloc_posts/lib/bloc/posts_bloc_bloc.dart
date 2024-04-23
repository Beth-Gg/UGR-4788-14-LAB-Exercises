import 'package:bloc/bloc.dart';
import 'package:bloc_posts/models/model.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:bloc_posts/repo/repositories.dart';


part 'posts_bloc_event.dart';
part 'posts_bloc_state.dart';


class PostsBloc extends Bloc<postEvent, PostsBlocState> {

  final postRepository _postRepository;
  

  PostsBloc(this._postRepository) : super(postLoadingState()) {
    on<LoadPostEvent>((event, emit) async {
      emit(postLoadingState());
      try {
        final posts = await _postRepository.getPosts();
        emit(postLoadedState(posts));
      } catch (e) {
        emit(postErrorState(e.toString()));
      }
    });
  }
}
