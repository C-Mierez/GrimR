import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SliverSettingsPage extends StatelessWidget {
  const SliverSettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            _mainAppBar(),
            _mainPreferencesList(),
          ],
        ),
      ),
    );
  }
}

class _mainPreferencesList extends StatelessWidget {
  const _mainPreferencesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<List<String>> sectionNames = [
      ['GENERAL', 'Notifications', 'Agreements', 'Password', 'Pin', 'Logout'],
      ['FEEDBACK', 'App Feedback', 'Bug Report'],
      ['LEGAL', 'Privacy', 'Imprint', 'Buy a Coffee'],
    ];
    final List<List<IconData>> detailedIcons = [
      [
        Icons.notification_important,
        Icons.check_box,
        Icons.lock,
        Icons.phonelink_lock,
        Icons.exit_to_app
      ],
      [Icons.announcement, Icons.bug_report],
      [MdiIcons.shieldAccount, MdiIcons.hammer, MdiIcons.coffeeToGo],
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: _detailedPreferences(
              sectionNames: sectionNames[index],
              detailedIcons: detailedIcons[index],
            ),
          );
        },
        childCount: sectionNames.length,
      ),
    );
  }
}

class _detailedPreferences extends StatelessWidget {
  final List<String> sectionNames;
  final List<IconData> detailedIcons;
  const _detailedPreferences({
    Key key,
    @required this.sectionNames,
    @required this.detailedIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            sectionNames.first,
            style: TextStyle(
              color: colorScheme.onBackground.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Divider(),
        _detailedItemBuilder(
          detailedNames: sectionNames.sublist(1),
          detailedIcons: detailedIcons,
        ),
      ],
    );
  }
}

class _detailedItemBuilder extends StatelessWidget {
  final List<String> detailedNames;
  final List<IconData> detailedIcons;
  const _detailedItemBuilder({
    Key key,
    @required this.detailedNames,
    @required this.detailedIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return index % 2 == 0
              ? InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: colorScheme.secondary,
                          child: Icon(
                            detailedIcons[(index / 2).round()],
                            color: colorScheme.onSecondary,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              detailedNames[(index / 2).round()],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: colorScheme.onBackground,
                        ),
                      ],
                    ),
                  ),
                )
              : Divider(
                  color: colorScheme.onBackground.withOpacity(0.4),
                );
        },
        itemCount: (detailedNames.length * 2) - 1);
  }
}

class _mainAppBar extends StatelessWidget {
  const _mainAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SliverAppBar(
      floating: true,
      snap: true,
      backgroundColor: colorScheme.background,
      expandedHeight: 100,
      leading: IconButton(
        icon: Icon(
          Icons.chevron_left,
          color: colorScheme.onBackground,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [StretchMode.fadeTitle],
        background: Container(color: Colors.transparent),
        centerTitle: true,
        title: Text(
          'Preferences',
          style: TextStyle(fontSize: 18, color: colorScheme.onBackground),
        ),
      ),
    );
  }
}
