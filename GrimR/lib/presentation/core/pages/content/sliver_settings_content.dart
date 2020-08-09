import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/pages/widgets/themes_bottom_sheet.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@immutable
class SliverSettingsContent {
  //? Defining the class to have a Singleton constructor
  static final SliverSettingsContent _sliverSettingsContent =
      SliverSettingsContent._internal();

  factory SliverSettingsContent() {
    return _sliverSettingsContent;
  }

  SliverSettingsContent._internal();

  //? Defining the variables
  final List<List<String>> _sectionNames = [
    ['GENERAL', 'Notifications', 'Agreements', 'Password', 'Pin', 'Logout'],
    ['FEEDBACK', 'App Feedback', 'Bug Report'],
    ['OTHER', 'Privacy', 'Theme', 'Buy a Coffee'],
  ];
  final List<List<IconData>> _itemIcons = [
    [
      Icons.notification_important,
      Icons.check_box,
      Icons.lock,
      Icons.phonelink_lock,
      Icons.exit_to_app
    ],
    [Icons.announcement, Icons.bug_report],
    [MdiIcons.shieldAccount, Icons.color_lens, MdiIcons.coffeeToGo],
  ];

  //? Public access to variables definition
  int get sectionAmount => _sectionNames.length;
  int itemAmount(int sectionId) {
    assert(sectionId >= 0 && sectionId < _sectionNames.length);
    return _itemIcons[sectionId].length;
  }

  String sectionName(int sectionId) {
    assert(sectionId >= 0 && sectionId < _sectionNames.length);
    return _sectionNames[sectionId].first;
  }

  IconData itemIcon(int sectionId, int itemId) {
    assert(sectionId >= 0 && sectionId < _itemIcons.length);
    assert(itemId >= 0 && itemId < _itemIcons[sectionId].length);
    return _itemIcons[sectionId][itemId];
  }

  String itemName(int sectionId, int itemId) {
    assert(sectionId >= 0 && sectionId < _sectionNames.length);
    assert(itemId >= 0 && itemId < _sectionNames[sectionId].length - 1);
    return _sectionNames[sectionId][itemId + 1];
  }

  //? Button logic definitions
  void Function() getMappedFunction(
      BuildContext context, int sectionId, int itemId) {
    switch (sectionId) {
      case 2:
        switch (itemId) {
          case 1:
            return _openThemesSelection(context);
          default:
            return () {};
        }
        break;
      default:
        return () {};
    }
  }

  void Function() _openThemesFabMenu(BuildContext context) {
    return () {};
  }

  void Function() _openThemesSelection(BuildContext context) {
    return () {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ThemesBottomSheet();
        },
      );
    };
  }
}
