// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'themes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemesEventTearOff {
  const _$ThemesEventTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Changed changed({@required AppTheme theme}) {
    return Changed(
      theme: theme,
    );
  }
}

// ignore: unused_element
const $ThemesEvent = _$ThemesEventTearOff();

mixin _$ThemesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result changed(AppTheme theme),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result changed(AppTheme theme),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result changed(Changed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result changed(Changed value),
    @required Result orElse(),
  });
}

abstract class $ThemesEventCopyWith<$Res> {
  factory $ThemesEventCopyWith(
          ThemesEvent value, $Res Function(ThemesEvent) then) =
      _$ThemesEventCopyWithImpl<$Res>;
}

class _$ThemesEventCopyWithImpl<$Res> implements $ThemesEventCopyWith<$Res> {
  _$ThemesEventCopyWithImpl(this._value, this._then);

  final ThemesEvent _value;
  // ignore: unused_field
  final $Res Function(ThemesEvent) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ThemesEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ThemesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result changed(AppTheme theme),
  }) {
    assert(initial != null);
    assert(changed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result changed(AppTheme theme),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result changed(Changed value),
  }) {
    assert(initial != null);
    assert(changed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result changed(Changed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ThemesEvent {
  const factory Initial() = _$Initial;
}

abstract class $ChangedCopyWith<$Res> {
  factory $ChangedCopyWith(Changed value, $Res Function(Changed) then) =
      _$ChangedCopyWithImpl<$Res>;
  $Res call({AppTheme theme});
}

class _$ChangedCopyWithImpl<$Res> extends _$ThemesEventCopyWithImpl<$Res>
    implements $ChangedCopyWith<$Res> {
  _$ChangedCopyWithImpl(Changed _value, $Res Function(Changed) _then)
      : super(_value, (v) => _then(v as Changed));

  @override
  Changed get _value => super._value as Changed;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(Changed(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

class _$Changed implements Changed {
  const _$Changed({@required this.theme}) : assert(theme != null);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'ThemesEvent.changed(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Changed &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @override
  $ChangedCopyWith<Changed> get copyWith =>
      _$ChangedCopyWithImpl<Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result changed(AppTheme theme),
  }) {
    assert(initial != null);
    assert(changed != null);
    return changed(theme);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result changed(AppTheme theme),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result changed(Changed value),
  }) {
    assert(initial != null);
    assert(changed != null);
    return changed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result changed(Changed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class Changed implements ThemesEvent {
  const factory Changed({@required AppTheme theme}) = _$Changed;

  AppTheme get theme;
  $ChangedCopyWith<Changed> get copyWith;
}
