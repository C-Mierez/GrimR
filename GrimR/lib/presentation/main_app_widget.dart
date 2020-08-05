import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.gr.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrimR',
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator(router: Router()),
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
      ),
    );
  }
}
