// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'postapi_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostApiEventTearOff {
  const _$PostApiEventTearOff();

// ignore: unused_element
  PostPosts postPosts({@required BuiltPost body}) {
    return PostPosts(
      body: body,
    );
  }

// ignore: unused_element
  GetPosts getPosts() {
    return const GetPosts();
  }

// ignore: unused_element
  GetPost getPost({@required int id}) {
    return GetPost(
      id: id,
    );
  }
}

// ignore: unused_element
const $PostApiEvent = _$PostApiEventTearOff();

mixin _$PostApiEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result postPosts(BuiltPost body),
    @required Result getPosts(),
    @required Result getPost(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postPosts(BuiltPost body),
    Result getPosts(),
    Result getPost(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postPosts(PostPosts value),
    @required Result getPosts(GetPosts value),
    @required Result getPost(GetPost value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postPosts(PostPosts value),
    Result getPosts(GetPosts value),
    Result getPost(GetPost value),
    @required Result orElse(),
  });
}

abstract class $PostApiEventCopyWith<$Res> {
  factory $PostApiEventCopyWith(
          PostApiEvent value, $Res Function(PostApiEvent) then) =
      _$PostApiEventCopyWithImpl<$Res>;
}

class _$PostApiEventCopyWithImpl<$Res> implements $PostApiEventCopyWith<$Res> {
  _$PostApiEventCopyWithImpl(this._value, this._then);

  final PostApiEvent _value;
  // ignore: unused_field
  final $Res Function(PostApiEvent) _then;
}

abstract class $PostPostsCopyWith<$Res> {
  factory $PostPostsCopyWith(PostPosts value, $Res Function(PostPosts) then) =
      _$PostPostsCopyWithImpl<$Res>;
  $Res call({BuiltPost body});
}

class _$PostPostsCopyWithImpl<$Res> extends _$PostApiEventCopyWithImpl<$Res>
    implements $PostPostsCopyWith<$Res> {
  _$PostPostsCopyWithImpl(PostPosts _value, $Res Function(PostPosts) _then)
      : super(_value, (v) => _then(v as PostPosts));

  @override
  PostPosts get _value => super._value as PostPosts;

  @override
  $Res call({
    Object body = freezed,
  }) {
    return _then(PostPosts(
      body: body == freezed ? _value.body : body as BuiltPost,
    ));
  }
}

class _$PostPosts implements PostPosts {
  const _$PostPosts({@required this.body}) : assert(body != null);

  @override
  final BuiltPost body;

  @override
  String toString() {
    return 'PostApiEvent.postPosts(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostPosts &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @override
  $PostPostsCopyWith<PostPosts> get copyWith =>
      _$PostPostsCopyWithImpl<PostPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result postPosts(BuiltPost body),
    @required Result getPosts(),
    @required Result getPost(int id),
  }) {
    assert(postPosts != null);
    assert(getPosts != null);
    assert(getPost != null);
    return postPosts(body);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postPosts(BuiltPost body),
    Result getPosts(),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postPosts != null) {
      return postPosts(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postPosts(PostPosts value),
    @required Result getPosts(GetPosts value),
    @required Result getPost(GetPost value),
  }) {
    assert(postPosts != null);
    assert(getPosts != null);
    assert(getPost != null);
    return postPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postPosts(PostPosts value),
    Result getPosts(GetPosts value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postPosts != null) {
      return postPosts(this);
    }
    return orElse();
  }
}

abstract class PostPosts implements PostApiEvent {
  const factory PostPosts({@required BuiltPost body}) = _$PostPosts;

  BuiltPost get body;
  $PostPostsCopyWith<PostPosts> get copyWith;
}

abstract class $GetPostsCopyWith<$Res> {
  factory $GetPostsCopyWith(GetPosts value, $Res Function(GetPosts) then) =
      _$GetPostsCopyWithImpl<$Res>;
}

class _$GetPostsCopyWithImpl<$Res> extends _$PostApiEventCopyWithImpl<$Res>
    implements $GetPostsCopyWith<$Res> {
  _$GetPostsCopyWithImpl(GetPosts _value, $Res Function(GetPosts) _then)
      : super(_value, (v) => _then(v as GetPosts));

  @override
  GetPosts get _value => super._value as GetPosts;
}

class _$GetPosts implements GetPosts {
  const _$GetPosts();

  @override
  String toString() {
    return 'PostApiEvent.getPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result postPosts(BuiltPost body),
    @required Result getPosts(),
    @required Result getPost(int id),
  }) {
    assert(postPosts != null);
    assert(getPosts != null);
    assert(getPost != null);
    return getPosts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postPosts(BuiltPost body),
    Result getPosts(),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPosts != null) {
      return getPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postPosts(PostPosts value),
    @required Result getPosts(GetPosts value),
    @required Result getPost(GetPost value),
  }) {
    assert(postPosts != null);
    assert(getPosts != null);
    assert(getPost != null);
    return getPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postPosts(PostPosts value),
    Result getPosts(GetPosts value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPosts != null) {
      return getPosts(this);
    }
    return orElse();
  }
}

abstract class GetPosts implements PostApiEvent {
  const factory GetPosts() = _$GetPosts;
}

abstract class $GetPostCopyWith<$Res> {
  factory $GetPostCopyWith(GetPost value, $Res Function(GetPost) then) =
      _$GetPostCopyWithImpl<$Res>;
  $Res call({int id});
}

class _$GetPostCopyWithImpl<$Res> extends _$PostApiEventCopyWithImpl<$Res>
    implements $GetPostCopyWith<$Res> {
  _$GetPostCopyWithImpl(GetPost _value, $Res Function(GetPost) _then)
      : super(_value, (v) => _then(v as GetPost));

  @override
  GetPost get _value => super._value as GetPost;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetPost(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

class _$GetPost implements GetPost {
  const _$GetPost({@required this.id}) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'PostApiEvent.getPost(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetPostCopyWith<GetPost> get copyWith =>
      _$GetPostCopyWithImpl<GetPost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result postPosts(BuiltPost body),
    @required Result getPosts(),
    @required Result getPost(int id),
  }) {
    assert(postPosts != null);
    assert(getPosts != null);
    assert(getPost != null);
    return getPost(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postPosts(BuiltPost body),
    Result getPosts(),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPost != null) {
      return getPost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postPosts(PostPosts value),
    @required Result getPosts(GetPosts value),
    @required Result getPost(GetPost value),
  }) {
    assert(postPosts != null);
    assert(getPosts != null);
    assert(getPost != null);
    return getPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postPosts(PostPosts value),
    Result getPosts(GetPosts value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPost != null) {
      return getPost(this);
    }
    return orElse();
  }
}

abstract class GetPost implements PostApiEvent {
  const factory GetPost({@required int id}) = _$GetPost;

  int get id;
  $GetPostCopyWith<GetPost> get copyWith;
}
