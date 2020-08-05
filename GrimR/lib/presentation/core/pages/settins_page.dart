import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_bloc.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme].primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                style: appThemeData[itemAppTheme].textTheme.bodyText1,
              ),
              onTap: () {
                BlocProvider.of<ThemesBloc>(context)
                    .add(ThemesEvent.changed(theme: itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}
