import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {

  // Prevent class to be instatiated
  AppStyles._();

  static get _defaultRadius => 15.0;

  // HomePageTitle
  static get homePageTitle => TxtStyle()
    ..fontSize(11)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..textColor(AppColors.cultured)
    ..alignment.topLeft()
    ..margin(left: 16, bottom: 8);

  // HomePageContainer
  static get homePageContainer => ParentStyle()
    ..maxWidth(600)
    ..alignment.center();

  // SearchBoxWidget
  static get searchBox => ParentStyle()
    ..height(80)
    ..borderRadius(topLeft: _defaultRadius, topRight: _defaultRadius)
    ..background.color(AppColors.cultured.withOpacity(0.1));

  // SearchBoxInputWidget
  static get searchBoxInput => ParentStyle()
    ..margin(top: 8, left: 22, right: 50);

  // SearchBoxTextWidget
  static get searchBoxText => TextStyle(
    color: AppColors.cultured,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontSize: 14
  );

  // SearchBoxHintWidget
  static get searchBoxHint => TextStyle(
      color: AppColors.cultured.withOpacity(0.7),
      fontFamily: GoogleFonts.roboto().fontFamily,
      fontSize: 14
  );

  // SearchImage
  static get searchImage => ParentStyle()
    ..margin(top: 20, right: 20)
    ..alignment.topRight();

  // TweetBoxWidget
  static get tweetBox => ParentStyle()
    ..height(300)
    ..borderRadius(all: _defaultRadius)
    ..background.color(AppColors.cultured)
    ..margin(top: 57, bottom: 45);

  // QuoteImage
  static get quoteImage => ParentStyle()
    ..margin(top: 23, left: 23);

  // TweetTextWidget
  static get tweetText => TxtStyle()
    ..maxWidth(450)
    ..fontSize(18)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..alignment.center()
    ..textAlign.justify()
    ..margin(all: 32)
    ..textColor(AppColors.charcoal);

  // ErrorMsg
  static get errorMsg => TxtStyle()
    ..maxWidth(450)
    ..fontSize(18)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..alignment.center()
    ..textAlign.justify()
    ..margin(all: 32)
    ..textColor(AppColors.radicalRed);

  // TweetSwipeRightImage
  static get swipeRightImage => ParentStyle()
    ..margin(bottom: 23, right: 15)
    ..alignment.bottomRight();

  // TweetAnalysisButton
  static get tweetAnalysisButton => ParentStyle()
    ..width(90)
    ..height(90)
    ..borderRadius(all: 45)
    ..background.color(AppColors.radicalRed);

}