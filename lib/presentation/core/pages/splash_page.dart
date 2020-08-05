import 'package:flutter/material.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_first_page.dart';

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
    );
  }
}
