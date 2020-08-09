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
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      decoration: BoxDecoration(
        color: colorScheme.background.withOpacity(0.9),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Themes',
                style: TextStyle(
                  color: colorScheme.onBackground.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const Flexible(flex: 8, child: _List()),
        ],
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      itemBuilder: (context, index) {
        final localIndex = (index / 2).round();
        final AppTheme itemAppTheme = AppTheme.values[localIndex];
        return index % 2 == 0
            ? ListTile(
                title: Text(
                  'Theme $localIndex',
                  style: TextStyle(
                    color: appThemeData[itemAppTheme].colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
              )
            : Divider(
                color: colorScheme.onBackground.withOpacity(0.4),
              );
      },
      itemCount: (AppTheme.values.length * 2) - 1,
    );
  }
}

/*
Divider(
                color: colorScheme.onBackground.withOpacity(0.4),
              )
*/

/*
ListTile(
            title: Text(
              'Theme $index',
              style: TextStyle(
                color: appThemeData[itemAppTheme].colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 20,
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
*/
