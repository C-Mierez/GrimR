import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.dart';

class CustomFirst_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.customSecond);
        },
      ),
    ));
  }
}
