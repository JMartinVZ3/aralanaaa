import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aralanaaa/common.dart';

class ThemeChanger with ChangeNotifier {
  bool _darkTheme = false;

  ThemeData _currentTheme;

  bool get darkTheme => this._darkTheme;
  ThemeData get currentTheme => this._currentTheme;

  ThemeChanger(int theme) {
    switch (theme) {
      case 1: // light
        _darkTheme = false;
        _currentTheme = ThemeData.light().copyWith(
            appBarTheme: AppBarTheme(
                color: AralanaaaColors.backgroundLight,
                actionsIconTheme: IconThemeData(color: AralanaaaColors.icons),
                iconTheme: IconThemeData(color: AralanaaaColors.icons),
                elevation: 0,
                textTheme: TextTheme(
                  headline1: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader1FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  headline2: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader2FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  headline3: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader3FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  headline4: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader4FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  bodyText1: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kparagraphFontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  bodyText2: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kparagraphFontSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0)),
                )),
            accentColor: AralanaaaColors.red200,
            scaffoldBackgroundColor: AralanaaaColors.backgroundLight,
            bottomAppBarColor: AralanaaaColors.cardsLight,
            backgroundColor: AralanaaaColors.backgroundLight,
            primaryColor: AralanaaaColors.red200,
            canvasColor: AralanaaaColors.inputLight,
            cardTheme: CardTheme(color: AralanaaaColors.cardsLight),
            textTheme: TextTheme(
              headline1: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader1FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              headline2: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader2FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              headline3: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader3FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              headline4: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader4FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              bodyText1: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kparagraphFontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              bodyText2: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kparagraphFontSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0)),
            ));
        break;

      case 2: // Dark
        _darkTheme = true;
        _currentTheme = ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(
                color: AralanaaaColors.backgroundDark,
                actionsIconTheme: IconThemeData(color: AralanaaaColors.icons),
                iconTheme: IconThemeData(color: AralanaaaColors.icons),
                elevation: 0,
                textTheme: TextTheme(
                  headline1: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Dark,
                          fontSize: kheader1FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  headline2: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Dark,
                          fontSize: kheader2FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  headline3: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Dark,
                          fontSize: kheader3FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  headline4: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Dark,
                          fontSize: kheader4FontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  bodyText1: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Dark,
                          fontSize: kparagraphFontSize,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0)),
                  bodyText2: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Dark,
                          fontSize: kparagraphFontSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0)),
                )),
            accentColor: AralanaaaColors.red200,
            scaffoldBackgroundColor: AralanaaaColors.backgroundDark,
            bottomAppBarColor: AralanaaaColors.cardsDark,
            backgroundColor: AralanaaaColors.backgroundDark,
            primaryColor: AralanaaaColors.red200,
            canvasColor: AralanaaaColors.inputDark,
            cardTheme: CardTheme(color: AralanaaaColors.cardsDark),
            textTheme: TextTheme(
              headline1: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Dark,
                      fontSize: kheader1FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              headline2: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Dark,
                      fontSize: kheader2FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              headline3: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Dark,
                      fontSize: kheader3FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              headline4: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Dark,
                      fontSize: kheader4FontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              bodyText1: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Dark,
                      fontSize: kparagraphFontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)),
              bodyText2: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Dark,
                      fontSize: kparagraphFontSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0)),
            ));
        break;

      default:
        _darkTheme = false;
        _currentTheme = ThemeData.light().copyWith(
            appBarTheme: AppBarTheme(
                color: AralanaaaColors.backgroundLight,
                actionsIconTheme: IconThemeData(color: AralanaaaColors.icons),
                iconTheme: IconThemeData(color: AralanaaaColors.icons),
                elevation: 0,
                textTheme: TextTheme(
                  headline1: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader1FontSize,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0)),
                  headline2: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader2FontSize,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0)),
                  headline3: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader3FontSize,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0)),
                  headline4: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kheader4FontSize,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0)),
                  bodyText1: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kparagraphFontSize,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0)),
                  bodyText2: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AralanaaaColors.text1Light,
                          fontSize: kparagraphFontSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0)),
                )),
            accentColor: AralanaaaColors.red200,
            scaffoldBackgroundColor: AralanaaaColors.backgroundLight,
            bottomAppBarColor: AralanaaaColors.cardsLight,
            backgroundColor: AralanaaaColors.backgroundLight,
            primaryColor: AralanaaaColors.red200,
            canvasColor: AralanaaaColors.inputLight,
            cardTheme: CardTheme(color: AralanaaaColors.cardsLight),
            textTheme: TextTheme(
              headline1: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader1FontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0)),
              headline2: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader2FontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0)),
              headline3: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader3FontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0)),
              headline4: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kheader4FontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0)),
              bodyText1: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kparagraphFontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0)),
              bodyText2: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AralanaaaColors.text1Light,
                      fontSize: kparagraphFontSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0)),
            ));
    }
  }

  set darkTheme(bool value) {
    _darkTheme = value;

    if (value) {
      _currentTheme = ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
              color: AralanaaaColors.backgroundDark,
              actionsIconTheme: IconThemeData(color: AralanaaaColors.icons),
              iconTheme: IconThemeData(color: AralanaaaColors.icons),
              elevation: 0,
              textTheme: TextTheme(
                headline1: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Dark,
                        fontSize: kheader1FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                headline2: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Dark,
                        fontSize: kheader2FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                headline3: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Dark,
                        fontSize: kheader3FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                headline4: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Dark,
                        fontSize: kheader4FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                bodyText1: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Dark,
                        fontSize: kparagraphFontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                bodyText2: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Dark,
                        fontSize: kparagraphFontSize,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0)),
              )),
          accentColor: AralanaaaColors.red200,
          scaffoldBackgroundColor: AralanaaaColors.backgroundDark,
          bottomAppBarColor: AralanaaaColors.cardsDark,
          backgroundColor: AralanaaaColors.backgroundDark,
          primaryColor: AralanaaaColors.red200,
          canvasColor: AralanaaaColors.inputDark,
          cardTheme: CardTheme(color: AralanaaaColors.cardsDark),
          textTheme: TextTheme(
            headline1: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Dark,
                    fontSize: kheader1FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            headline2: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Dark,
                    fontSize: kheader2FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            headline3: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Dark,
                    fontSize: kheader3FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            headline4: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Dark,
                    fontSize: kheader4FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            bodyText1: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Dark,
                    fontSize: kparagraphFontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            bodyText2: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Dark,
                    fontSize: kparagraphFontSize,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0)),
          ));
    } else {
      _currentTheme = ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
              color: AralanaaaColors.backgroundLight,
              actionsIconTheme: IconThemeData(color: AralanaaaColors.icons),
              iconTheme: IconThemeData(color: AralanaaaColors.icons),
              elevation: 0,
              textTheme: TextTheme(
                headline1: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Light,
                        fontSize: kheader1FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                headline2: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Light,
                        fontSize: kheader2FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                headline3: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Light,
                        fontSize: kheader3FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                headline4: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Light,
                        fontSize: kheader4FontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                bodyText1: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Light,
                        fontSize: kparagraphFontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0)),
                bodyText2: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: AralanaaaColors.text1Light,
                        fontSize: kparagraphFontSize,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0)),
              )),
          accentColor: AralanaaaColors.red200,
          scaffoldBackgroundColor: AralanaaaColors.backgroundLight,
          bottomAppBarColor: AralanaaaColors.cardsLight,
          backgroundColor: AralanaaaColors.backgroundLight,
          primaryColor: AralanaaaColors.red200,
          canvasColor: AralanaaaColors.inputLight,
          cardTheme: CardTheme(color: AralanaaaColors.cardsLight),
          textTheme: TextTheme(
            headline1: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Light,
                    fontSize: kheader1FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            headline2: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Light,
                    fontSize: kheader2FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            headline3: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Light,
                    fontSize: kheader3FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            headline4: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Light,
                    fontSize: kheader4FontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            bodyText1: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Light,
                    fontSize: kparagraphFontSize,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0)),
            bodyText2: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AralanaaaColors.text1Light,
                    fontSize: kparagraphFontSize,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0)),
          ));
    }

    notifyListeners();
  }
}
