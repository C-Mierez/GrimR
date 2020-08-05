import 'package:chopper/chopper.dart';
import 'package:dart_rest_api_chopper/model/built_post.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';

part 'postapi_state.freezed.dart';

@freezed
abstract class PostApiState with _$PostApiState {
  const factory PostApiState(
      {@required bool isLoading,
      @required Option<Response<BuiltList<BuiltPost>>> postsResponse,
      @required Option<Response<BuiltPost>> singlePostResponse,
      @required Option<Response<BuiltPost>> postPostResponse}) = _PostApiState;

  factory PostApiState.initial() => PostApiState(
        isLoading: false,
        postsResponse: none(),
        singlePostResponse: none(),
        postPostResponse: none(),
      );
}
