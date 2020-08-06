import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_bloc.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';

/* Added an AnimatedContainer as a background, so the transition animation when
  changing colours is smoother.
*/

/* A ListView contains all the different themes defined in AppTheme enum. Each one
is coloured accordingly, and will notify the bloc with an event that changes the
current theme to the new one.

*/
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: AnimatedContainer(
        // Using this allows the animation to happen.
        // Having the default values, although correct, the animation does not
        // happen when they are updated.
        color: Theme.of(context).colorScheme.background,
        duration: const Duration(seconds: 1),
        child: const _ThemesListView(),
      ),
    );
  }
}

class _ThemesListView extends StatelessWidget {
  const _ThemesListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      // We want to show an option for each value in the enum
      // aka for each theme defined in the app.
      itemCount: AppTheme.values.length,
      itemBuilder: (context, index) {
        final AppTheme itemAppTheme = AppTheme.values[index];
        final ColorScheme colorScheme = appThemeData[itemAppTheme].colorScheme;
        final Color themePrimaryColor =
            colorScheme.brightness == Brightness.light
                ? colorScheme.primary
                : colorScheme.surface;
        return Card(
          color: themePrimaryColor,
          child: ListTile(
            title: Text(
              'Theme $index',
              style: appThemeData[itemAppTheme].textTheme.bodyText1,
            ),
            onTap: () {
              BlocProvider.of<ThemesBloc>(context)
                  .add(ThemesEvent.changed(theme: itemAppTheme));
            },
          ),
        );
      },
    );
  }
}
