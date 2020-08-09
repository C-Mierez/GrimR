import 'package:flutter/material.dart';
import 'package:grimr/presentation/main_app_widget.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  runApp(MainApp());
}
