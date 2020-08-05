import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrimR',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
      ),
    );
  }
}
