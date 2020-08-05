import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc_tutorial/cubit/weather_cubit.dart';
import 'package:flutter_cubit_bloc_tutorial/data/weather_repository.dart';
import 'package:flutter_cubit_bloc_tutorial/pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherCubit(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}

// This would be a Mutable example for state management
/*
class MyChangeNotifier extends ChangeNotifier {
  int field1;
  String field2;

  void changeState() {
    field2 = 'New value';
    notifyListeners();
  }
}
*/

//* Cubit
/*
// Instead of having Fields and its controllers, we just use classes isntead

class MyState {
  final int field;
  final String field2;

  MyState(this.field, this.field2);
}

// The fields are on a different class than the cubit

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyState(0, 'Initial value'));

  void changeState() {
    emit(MyState(0, 'New value'));
  }
}

// Instead of actually mutating the values of MyState, we are isntead emitting
// a whole new one with ALL the values

*/
