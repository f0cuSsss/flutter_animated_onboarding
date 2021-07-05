part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  // final ThemeData themeData;
  ThemeData themeData;

  // const ThemeState();
  ThemeState({required this.themeData});

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {
  // ThemeInitial() : super(themeData: appThemeLight);
  ThemeInitial()
      : super(
          // themeData: appThemeData[AppTheme.Dark] ?? appThemeDark,
          // themeData: appThemeData[AppTheme.Light] ?? appThemeLight,
          themeData: appThemeLight,
        );
}
