import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grimr/presentation/core/routes/router.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_bloc.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_state.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemesBloc(),
      child: BlocBuilder<ThemesBloc, ThemesState>(
        builder: (context, state) => themedMaterialApp(state),
      ),
    );
  }

  MaterialApp themedMaterialApp(ThemesState state) {
    return MaterialApp(
      title: 'GrimR',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: state.themeData,

      //ThemeData.dark().copyWith(
      //floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //    backgroundColor: Colors.deepPurple),
      //),
    );
  }
}
