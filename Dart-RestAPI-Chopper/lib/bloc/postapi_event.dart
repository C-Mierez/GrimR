import 'package:dart_rest_api_chopper/model/built_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'postapi_event.freezed.dart';

@freezed
abstract class PostApiEvent with _$PostApiEvent {
  const factory PostApiEvent.postPosts({@required BuiltPost body}) = PostPosts;

  const factory PostApiEvent.getPosts() = GetPosts;

  const factory PostApiEvent.getPost({@required int id}) = GetPost;
}
