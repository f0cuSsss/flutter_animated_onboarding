part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;

  // const ThemeState();
  const ThemeState({required this.themeData});

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {
  ThemeInitial() : super(themeData: appThemeLight);
}
