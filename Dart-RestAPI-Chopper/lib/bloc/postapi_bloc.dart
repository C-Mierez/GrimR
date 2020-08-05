import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_event.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_state.dart';
import 'package:dart_rest_api_chopper/data/post_api_service.dart';
import 'package:dart_rest_api_chopper/model/built_post.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class PostApiBloc extends Bloc<PostApiEvent, PostApiState> {
  final PostApiService postApiService;
  PostApiBloc({@required this.postApiService}) : super(PostApiState.initial());

  @override
  Stream<PostApiState> mapEventToState(
    PostApiEvent event,
  ) async* {
    yield* event.map(postPosts: (event) async* {
      yield state.copyWith(
        isLoading: true,
        postPostResponse: none(),
      );

      final response = await postApiService.postPost(event.body);
      yield state.copyWith(
        isLoading: false,
        postPostResponse: optionOf(response),
      );
    }, getPosts: (event) async* {
      yield state.copyWith(
        isLoading: true,
        postsResponse: none(),
        singlePostResponse: none(),
        postPostResponse: none(),
      );
      final response = await postApiService.getPosts();
      yield state.copyWith(
        isLoading: false,
        postsResponse: optionOf(response),
        singlePostResponse: none(),
      );
    }, getPost: (event) async* {
      yield state.copyWith(
        isLoading: true,
        singlePostResponse: none(),
        postPostResponse: none(),
      );
      final response = await postApiService.getPost(event.id);
      yield state.copyWith(
        isLoading: false,
        singlePostResponse: optionOf(response),
      );
    });
  }
}
