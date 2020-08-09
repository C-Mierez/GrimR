import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';

import 'package:grimr/presentation/core/themes/bloc/themes_bloc.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ThemesBottomSheet extends StatelessWidget {
  const ThemesBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        decoration: BoxDecoration(
          color: colorScheme.background.withOpacity(0.8),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final AppTheme itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme].colorScheme.background,
              child: ListTile(
                title: Text(
                  'Theme $index',
                  style: TextStyle(
                    color: appThemeData[itemAppTheme].colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                onTap: () async {
                  //? Adding a little delay to allow the tap animation to happen before
                  //? doing any changes. This leads to better visuals
                  await Future.delayed(const Duration(milliseconds: 200));
                  BlocProvider.of<ThemesBloc>(context)
                      .add(ThemesEvent.changed(theme: itemAppTheme));
                  await Future.delayed(const Duration(milliseconds: 300));
                  Navigator.of(context).pop();
                },
              ),
            );
          },
          itemCount: AppTheme.values.length,
        ));
  }
}
