import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';
part 'themes_state.freezed.dart';

@freezed
abstract class ThemesState with _$ThemesState {
  const factory ThemesState({
    @required ThemeData themeData,
    @required AppTheme appTheme,
  }) = _ThemesState;
}
