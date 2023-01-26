import 'package:equatable/equatable.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppCubitInitial extends AppState {}

class AppChangeLanguageState extends AppState {}

class AppChangeModeState extends AppState {}
