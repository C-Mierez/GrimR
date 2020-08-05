import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'themes_state.freezed.dart';

@freezed
abstract class ThemesState with _$ThemesState {
  const factory ThemesState({
    @required ThemeData themeData,
  }) = _ThemesState;
}
