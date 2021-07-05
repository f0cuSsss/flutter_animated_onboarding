part of 'theme_bloc.dart';

// abstract class ThemeEvent extends Equatable {
class ThemeEvent extends Equatable {
  ThemeEvent();
  // const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({required this.theme});
}
