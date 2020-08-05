import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/weather.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]);
}

class WeatherInitial extends WeatherState {
  @override
  List<Object> get props => props;
}

class WeatherLoading extends WeatherState {
  @override
  List<Object> get props => props;
}

// Only the WeatherLoaded event needs to contain data
class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded(this.weather) : super([weather]);

  @override
  List<Object> get props => props;
}
