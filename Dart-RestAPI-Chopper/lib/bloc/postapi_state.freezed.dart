// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'postapi_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostApiStateTearOff {
  const _$PostApiStateTearOff();

// ignore: unused_element
  _PostApiState call(
      {@required bool isLoading,
      @required Option<Response<BuiltList<BuiltPost>>> postsResponse,
      @required Option<Response<BuiltPost>> singlePostResponse,
      @required Option<Response<BuiltPost>> postPostResponse}) {
    return _PostApiState(
      isLoading: isLoading,
      postsResponse: postsResponse,
      singlePostResponse: singlePostResponse,
      postPostResponse: postPostResponse,
    );
  }
}

// ignore: unused_element
const $PostApiState = _$PostApiStateTearOff();

mixin _$PostApiState {
  bool get isLoading;
  Option<Response<BuiltList<BuiltPost>>> get postsResponse;
  Option<Response<BuiltPost>> get singlePostResponse;
  Option<Response<BuiltPost>> get postPostResponse;

  $PostApiStateCopyWith<PostApiState> get copyWith;
}

abstract class $PostApiStateCopyWith<$Res> {
  factory $PostApiStateCopyWith(
          PostApiState value, $Res Function(PostApiState) then) =
      _$PostApiStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Response<BuiltList<BuiltPost>>> postsResponse,
      Option<Response<BuiltPost>> singlePostResponse,
      Option<Response<BuiltPost>> postPostResponse});
}

class _$PostApiStateCopyWithImpl<$Res> implements $PostApiStateCopyWith<$Res> {
  _$PostApiStateCopyWithImpl(this._value, this._then);

  final PostApiState _value;
  // ignore: unused_field
  final $Res Function(PostApiState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object postsResponse = freezed,
    Object singlePostResponse = freezed,
    Object postPostResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      postsResponse: postsResponse == freezed
          ? _value.postsResponse
          : postsResponse as Option<Response<BuiltList<BuiltPost>>>,
      singlePostResponse: singlePostResponse == freezed
          ? _value.singlePostResponse
          : singlePostResponse as Option<Response<BuiltPost>>,
      postPostResponse: postPostResponse == freezed
          ? _value.postPostResponse
          : postPostResponse as Option<Response<BuiltPost>>,
    ));
  }
}

abstract class _$PostApiStateCopyWith<$Res>
    implements $PostApiStateCopyWith<$Res> {
  factory _$PostApiStateCopyWith(
          _PostApiState value, $Res Function(_PostApiState) then) =
      __$PostApiStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Response<BuiltList<BuiltPost>>> postsResponse,
      Option<Response<BuiltPost>> singlePostResponse,
      Option<Response<BuiltPost>> postPostResponse});
}

class __$PostApiStateCopyWithImpl<$Res> extends _$PostApiStateCopyWithImpl<$Res>
    implements _$PostApiStateCopyWith<$Res> {
  __$PostApiStateCopyWithImpl(
      _PostApiState _value, $Res Function(_PostApiState) _then)
      : super(_value, (v) => _then(v as _PostApiState));

  @override
  _PostApiState get _value => super._value as _PostApiState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object postsResponse = freezed,
    Object singlePostResponse = freezed,
    Object postPostResponse = freezed,
  }) {
    return _then(_PostApiState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      postsResponse: postsResponse == freezed
          ? _value.postsResponse
          : postsResponse as Option<Response<BuiltList<BuiltPost>>>,
      singlePostResponse: singlePostResponse == freezed
          ? _value.singlePostResponse
          : singlePostResponse as Option<Response<BuiltPost>>,
      postPostResponse: postPostResponse == freezed
          ? _value.postPostResponse
          : postPostResponse as Option<Response<BuiltPost>>,
    ));
  }
}

class _$_PostApiState implements _PostApiState {
  const _$_PostApiState(
      {@required this.isLoading,
      @required this.postsResponse,
      @required this.singlePostResponse,
      @required this.postPostResponse})
      : assert(isLoading != null),
        assert(postsResponse != null),
        assert(singlePostResponse != null),
        assert(postPostResponse != null);

  @override
  final bool isLoading;
  @override
  final Option<Response<BuiltList<BuiltPost>>> postsResponse;
  @override
  final Option<Response<BuiltPost>> singlePostResponse;
  @override
  final Option<Response<BuiltPost>> postPostResponse;

  @override
  String toString() {
    return 'PostApiState(isLoading: $isLoading, postsResponse: $postsResponse, singlePostResponse: $singlePostResponse, postPostResponse: $postPostResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostApiState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.postsResponse, postsResponse) ||
                const DeepCollectionEquality()
                    .equals(other.postsResponse, postsResponse)) &&
            (identical(other.singlePostResponse, singlePostResponse) ||
                const DeepCollectionEquality()
                    .equals(other.singlePostResponse, singlePostResponse)) &&
            (identical(other.postPostResponse, postPostResponse) ||
                const DeepCollectionEquality()
                    .equals(other.postPostResponse, postPostResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(postsResponse) ^
      const DeepCollectionEquality().hash(singlePostResponse) ^
      const DeepCollectionEquality().hash(postPostResponse);

  @override
  _$PostApiStateCopyWith<_PostApiState> get copyWith =>
      __$PostApiStateCopyWithImpl<_PostApiState>(this, _$identity);
}

abstract class _PostApiState implements PostApiState {
  const factory _PostApiState(
          {@required bool isLoading,
          @required Option<Response<BuiltList<BuiltPost>>> postsResponse,
          @required Option<Response<BuiltPost>> singlePostResponse,
          @required Option<Response<BuiltPost>> postPostResponse}) =
      _$_PostApiState;

  @override
  bool get isLoading;
  @override
  Option<Response<BuiltList<BuiltPost>>> get postsResponse;
  @override
  Option<Response<BuiltPost>> get singlePostResponse;
  @override
  Option<Response<BuiltPost>> get postPostResponse;
  @override
  _$PostApiStateCopyWith<_PostApiState> get copyWith;
}
