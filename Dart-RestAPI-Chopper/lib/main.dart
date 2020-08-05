import 'package:dart_rest_api_chopper/bloc/postapi_bloc.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_event.dart';
import 'package:dart_rest_api_chopper/pages/home_page.dart';
import 'package:dart_rest_api_chopper/data/post_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

void main() {
  _loggingSetup();
  Bloc.observer = SimpleBlocDelegate();
  runApp(MyApp());
}

void _loggingSetup() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostApiBloc>(
      create: (context) => PostApiBloc(postApiService: PostApiService.create())
        ..add(PostApiEvent.getPosts()),
      child: MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    // ignore: avoid_print
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // ignore: avoid_print
    print(transition);
  }
}
