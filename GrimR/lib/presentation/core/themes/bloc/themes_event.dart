import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';

part 'themes_event.freezed.dart';

@freezed
abstract class ThemesEvent with _$ThemesEvent {
  const factory ThemesEvent.initial() = Initial;
  const factory ThemesEvent.changed({@required AppTheme theme}) = Changed;
}
