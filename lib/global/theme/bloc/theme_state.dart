part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  ThemeData? themeData;

  // ignore: prefer_const_constructors_in_immutables
  ThemeState({required this.themeData});

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {}
