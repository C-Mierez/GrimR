import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page :)'),
        actions: <Widget>[
          IconButton(
            icon: const Hero(
              tag: 'appBarIcon',
              child: Icon(MdiIcons.formatPaint),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.sliverSettings);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.customFirst);
        },
        heroTag: 'customTrans',
        child: const Icon(Icons.art_track),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          spacing: 30,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.refactoredAnimation);
              },
              heroTag: null,
              child: const Icon(MdiIcons.animation),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.sliverTest);
              },
              heroTag: null,
              child: const Icon(MdiIcons.signalDistanceVariant),
            ),
          ],
        ),
      ),
    );
  }
}
