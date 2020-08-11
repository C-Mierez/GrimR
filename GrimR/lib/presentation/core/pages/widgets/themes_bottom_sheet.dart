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
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height / 3
          : MediaQuery.of(context).size.height / 2,
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
          Flexible(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.onBackground.withOpacity(0.03),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const _List(),
            ),
          ),
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
            ? Container(
                // decoration: BoxDecoration(
                //   color: colorScheme.onBackground.withOpacity(0.05),
                //   borderRadius: BorderRadius.circular(15),
                // ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  trailing: CircleAvatar(
                    backgroundColor:
                        mapAppTheme(itemAppTheme).colorScheme.primary,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return CircleAvatar(
                          radius: constraints.maxHeight / 3,
                          backgroundColor:
                              mapAppTheme(itemAppTheme).colorScheme.secondary,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return CircleAvatar(
                                radius: constraints.maxHeight / 3,
                                backgroundColor: mapAppTheme(itemAppTheme)
                                    .colorScheme
                                    .background,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  title: Text(
                    'Theme $localIndex',
                    style: TextStyle(
                      color: colorScheme.onBackground,
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
                ),
              )
            : Divider(
                height: 5,
                color: colorScheme.onBackground.withOpacity(0.4),
                indent: 20,
                endIndent: 20,
              );
      },
      itemCount: (AppTheme.values.length * 2) - 1,
    );
  }
}
