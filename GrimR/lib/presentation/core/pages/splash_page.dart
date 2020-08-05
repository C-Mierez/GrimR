import 'package:flutter/material.dart';
import 'package:grimr/presentation/custom_animations/pages/refactored_animation_page.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_first_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page :)'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CustomFirst_Page(),
          ));
        },
        child: Icon(Icons.art_track),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RefactoredAnimationPage(),
            ));
          },
          heroTag: null,
          child: Icon(MdiIcons.animation),
        ),
      ),
    );
  }
}
