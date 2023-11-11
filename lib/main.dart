import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/bloc/weather_bloc_bloc.dart';
import 'package:untitled1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<WeatherBlocBloc>(
          create: (context) => WeatherBlocBloc()..add(FetchWeather()),
          child: const HomePage(),
        ));
  }
}
