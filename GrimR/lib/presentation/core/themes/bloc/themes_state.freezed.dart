// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'themes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemesStateTearOff {
  const _$ThemesStateTearOff();

// ignore: unused_element
  _ThemesState call(
      {@required ThemeData themeData, @required AppTheme appTheme}) {
    return _ThemesState(
      themeData: themeData,
      appTheme: appTheme,
    );
  }
}

// ignore: unused_element
const $ThemesState = _$ThemesStateTearOff();

mixin _$ThemesState {
  ThemeData get themeData;
  AppTheme get appTheme;

  $ThemesStateCopyWith<ThemesState> get copyWith;
}

abstract class $ThemesStateCopyWith<$Res> {
  factory $ThemesStateCopyWith(
          ThemesState value, $Res Function(ThemesState) then) =
      _$ThemesStateCopyWithImpl<$Res>;
  $Res call({ThemeData themeData, AppTheme appTheme});
}

class _$ThemesStateCopyWithImpl<$Res> implements $ThemesStateCopyWith<$Res> {
  _$ThemesStateCopyWithImpl(this._value, this._then);

  final ThemesState _value;
  // ignore: unused_field
  final $Res Function(ThemesState) _then;

  @override
  $Res call({
    Object themeData = freezed,
    Object appTheme = freezed,
  }) {
    return _then(_value.copyWith(
      themeData:
          themeData == freezed ? _value.themeData : themeData as ThemeData,
      appTheme: appTheme == freezed ? _value.appTheme : appTheme as AppTheme,
    ));
  }
}

abstract class _$ThemesStateCopyWith<$Res>
    implements $ThemesStateCopyWith<$Res> {
  factory _$ThemesStateCopyWith(
          _ThemesState value, $Res Function(_ThemesState) then) =
      __$ThemesStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData themeData, AppTheme appTheme});
}

class __$ThemesStateCopyWithImpl<$Res> extends _$ThemesStateCopyWithImpl<$Res>
    implements _$ThemesStateCopyWith<$Res> {
  __$ThemesStateCopyWithImpl(
      _ThemesState _value, $Res Function(_ThemesState) _then)
      : super(_value, (v) => _then(v as _ThemesState));

  @override
  _ThemesState get _value => super._value as _ThemesState;

  @override
  $Res call({
    Object themeData = freezed,
    Object appTheme = freezed,
  }) {
    return _then(_ThemesState(
      themeData:
          themeData == freezed ? _value.themeData : themeData as ThemeData,
      appTheme: appTheme == freezed ? _value.appTheme : appTheme as AppTheme,
    ));
  }
}

class _$_ThemesState implements _ThemesState {
  const _$_ThemesState({@required this.themeData, @required this.appTheme})
      : assert(themeData != null),
        assert(appTheme != null);

  @override
  final ThemeData themeData;
  @override
  final AppTheme appTheme;

  @override
  String toString() {
    return 'ThemesState(themeData: $themeData, appTheme: $appTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemesState &&
            (identical(other.themeData, themeData) ||
                const DeepCollectionEquality()
                    .equals(other.themeData, themeData)) &&
            (identical(other.appTheme, appTheme) ||
                const DeepCollectionEquality()
                    .equals(other.appTheme, appTheme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeData) ^
      const DeepCollectionEquality().hash(appTheme);

  @override
  _$ThemesStateCopyWith<_ThemesState> get copyWith =>
      __$ThemesStateCopyWithImpl<_ThemesState>(this, _$identity);
}

abstract class _ThemesState implements ThemesState {
  const factory _ThemesState(
      {@required ThemeData themeData,
      @required AppTheme appTheme}) = _$_ThemesState;

  @override
  ThemeData get themeData;
  @override
  AppTheme get appTheme;
  @override
  _$ThemesStateCopyWith<_ThemesState> get copyWith;
}
