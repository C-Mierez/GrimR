import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_state.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {
  ThemesBloc()
      : super(ThemesState(themeData: appThemeData[AppTheme.GreenLight]));

  @override
  Stream<ThemesState> mapEventToState(
    ThemesEvent event,
  ) async* {
    yield* event.maybeMap(
      orElse: () async* {
        yield state.copyWith();
      },
      changed: (event) async* {
        yield ThemesState(themeData: appThemeData[event.theme]);
      },
    );
  }
}
