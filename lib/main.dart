import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/blocs/bloc_observer.dart';
import 'presentation/screens/app/app.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const App());
}
