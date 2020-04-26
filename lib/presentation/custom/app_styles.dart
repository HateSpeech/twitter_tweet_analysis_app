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
    ..width(600)
    ..alignment.center()
    ..background.color(Colors.green);

  // SearchBoxWidget
  static get searchBox => ParentStyle()
    ..height(80)
    ..borderRadius(topLeft: _defaultRadius, topRight: _defaultRadius)
    ..background.color(AppColors.gray3);

  // SearchBoxInputWidget
  static get searchBoxInput => ParentStyle();

  // SearchBoxHintWidget
  static get searchBoxHint => TxtStyle()
    ..fontSize(14)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..textAlign.left()
    ..textColor(AppColors.charcoal);

  // SearchImage
  static get searchImage => ParentStyle();

  // TweetBoxWidget
  static get tweetBox => ParentStyle()
    ..borderRadius(all: _defaultRadius)
    ..background.color(AppColors.cultured)
    ..margin(top: 57, bottom: 45);

  // QuoteImage
  static get quoteImage => ParentStyle()
    ..margin(top: 23, left: 23);

  // TweetTextWidget
  static get tweetText => TxtStyle()
    ..width(450)
    ..fontSize(18)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..alignment.center()
    ..textAlign.justify()
    ..textColor(AppColors.charcoal);

  // TweetSwipeRightImage
  static get swipeRightImage => ParentStyle()
    ..margin(bottom: 23, right: 23)
    ..alignment.bottomRight();

  // TweetAnalysisButton
  static get tweetAnalysisButton => ParentStyle()
    ..width(90)
    ..height(90)
    ..borderRadius(all: 45)
    ..background.color(AppColors.radicalRed)
    ..alignment.bottomCenter();

}