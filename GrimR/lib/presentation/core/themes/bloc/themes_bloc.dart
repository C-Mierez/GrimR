import 'dart:async';
import 'package:grimr/presentation/core/themes/app_themes.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_state.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemesBloc extends HydratedBloc<ThemesEvent, ThemesState> {
  ThemesBloc()
      : super(
          ThemesState(
              themeData: mapAppTheme(AppTheme.GreenLight),
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
            themeData: mapAppTheme(event.theme), appTheme: event.theme);
      },
    );
  }

  @override
  ThemesState fromJson(Map<String, dynamic> json) {
    final themeIndex = json['themeIndex'] as int;
    return ThemesState(
      themeData: mapAppTheme(AppTheme.values[themeIndex]),
      appTheme: AppTheme.values[themeIndex],
    );
  }

  @override
  Map<String, int> toJson(ThemesState state) {
    final themeIndex = AppTheme.values.indexOf(state.appTheme);
    return {'themeIndex': themeIndex};
  }
}
