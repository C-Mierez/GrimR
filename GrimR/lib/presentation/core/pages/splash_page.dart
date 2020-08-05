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
            icon: Icon(MdiIcons.formatPaint),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.settings);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.customFirst);
        },
        child: Icon(Icons.art_track),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.refactoredAnimation);
          },
          heroTag: null,
          child: Icon(MdiIcons.animation),
        ),
      ),
    );
  }
}
