import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/pages/content/sliver_settings_content.dart';
//import 'package:grimr/presentation/core/routes/router.dart';
import 'package:provider/provider.dart';

class SliverSettingsPage extends StatelessWidget {
  const SliverSettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Provider(
          create: (context) => SliverSettingsContent(),
          child: const CustomScrollView(
            slivers: <Widget>[
              _mainAppBar(),
              _mainPreferencesList(),
            ],
          ),
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
    final pageContent = Provider.of<SliverSettingsContent>(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: _detailedPreferences(
              currentSectionId: index,
            ),
          );
        },
        childCount: pageContent.sectionAmount,
      ),
    );
  }
}

class _detailedPreferences extends StatelessWidget {
  final int currentSectionId;
  const _detailedPreferences({
    Key key,
    @required this.currentSectionId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageContent = Provider.of<SliverSettingsContent>(context);
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            pageContent.sectionName(currentSectionId),
            style: TextStyle(
              color: colorScheme.onBackground.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Divider(),
        Container(
          decoration: BoxDecoration(
            color: colorScheme.onBackground.withOpacity(0.04),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: _detailedItemBuilder(
              currentSectionId: currentSectionId,
            ),
          ),
        ),
      ],
    );
  }
}

class _detailedItemBuilder extends StatelessWidget {
  final int currentSectionId;

  const _detailedItemBuilder({
    Key key,
    @required this.currentSectionId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageContent = Provider.of<SliverSettingsContent>(context);
    final colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: (pageContent.itemAmount(currentSectionId) * 2) - 1,
      itemBuilder: (context, index) {
        return index % 2 == 0
            ? _buildInkWell(
                context, colorScheme, pageContent, currentSectionId, index)
            : Divider(
                color: colorScheme.onBackground.withOpacity(0.4),
              );
      },
    );
  }

  InkWell _buildInkWell(BuildContext context, ColorScheme colorScheme,
      SliverSettingsContent pageContent, int currentSectionId, int index) {
    final pageContent = Provider.of<SliverSettingsContent>(context);
    final currentId = (index / 2).round();
    return InkWell(
      onTap:
          pageContent.getMappedFunction(context, currentSectionId, currentId),
      child: Container(
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: colorScheme.secondary,
              child: Icon(
                pageContent.itemIcon(currentSectionId, currentId),
                color: colorScheme.onSecondary,
              ),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  pageContent.itemName(currentSectionId, (index / 2).round()),
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
    );
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
      pinned: true,
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
