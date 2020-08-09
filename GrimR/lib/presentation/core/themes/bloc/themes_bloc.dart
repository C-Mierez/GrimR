import 'dart:async';
import 'package:grimr/presentation/core/themes/app_themes.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_state.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemesBloc extends HydratedBloc<ThemesEvent, ThemesState> {
  ThemesBloc()
      : super(
          ThemesState(
              themeData: appThemeData[AppTheme.GreenLight],
              appTheme: AppTheme.GreenLight),
        );

  @override
  Stream<ThemesState> mapEventToState(
    ThemesEvent event,
  ) async* {
    yield* event.map(
      initial: (event) async* {
        yield state.copyWith();
      },
      changed: (event) async* {
        yield ThemesState(
            themeData: appThemeData[event.theme], appTheme: event.theme);
      },
    );
  }

  @override
  ThemesState fromJson(Map<String, dynamic> json) {
    final themeIndex = json['themeIndex'] as int;
    return ThemesState(
      themeData: appThemeData[AppTheme.values[themeIndex]],
      appTheme: AppTheme.values[themeIndex],
    );
  }

  @override
  Map<String, int> toJson(ThemesState state) {
    int themeIndex = -1;
    final theme = AppTheme.values.firstWhere((element) {
      themeIndex++;
      return element == state.appTheme;
    });
    return {'themeIndex': themeIndex};
  }
}
