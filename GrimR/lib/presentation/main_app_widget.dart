import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/pages/splash_page.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrimR',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
      ),
    );
  }
}
