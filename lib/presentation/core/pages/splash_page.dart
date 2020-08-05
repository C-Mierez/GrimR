import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page :)'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushCustomFirst_Page();
        },
        child: Icon(Icons.art_track),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.of(context).pushBasicAnimationPage();
          },
          heroTag: null,
          child: Icon(Icons.directions_walk),
        ),
      ),
    );
  }
}
