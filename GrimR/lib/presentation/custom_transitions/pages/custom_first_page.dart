import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.gr.dart';

class CustomFirst_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushCustomSecond_Page();
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
