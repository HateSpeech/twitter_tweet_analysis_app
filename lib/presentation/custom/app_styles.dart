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
    ..margin(left: 16);

  // HomePageContainer
  static get homePageContainer => ParentStyle()
    ..width(600)
    ..alignment.center();

  // TweetAnalysisButton
  static get tweetAnalysisButton => ParentStyle()
    ..alignment.bottomCenter()
    ..margin(top: 30)
    ..width(90)
    ..height(90)
    ..borderRadius(all: 45)
    ..background.color(AppColors.radicalRed);

  // SearchBoxWidget
  static get searchBox => ParentStyle()
    ..height(80)
    ..borderRadius(topLeft: _defaultRadius, topRight: _defaultRadius)
    ..background.color(AppColors.radicalRed);

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
    ..height(300)
    ..margin(top: 57)
    ..borderRadius(all: _defaultRadius)
    ..background.color(AppColors.cultured);

  // QuoteImage
  static get quoteImage => ParentStyle()
    ..margin(left: 37, top: 37)
    ..alignment.topLeft();

  // TweetTextWidget
  static get tweetText => TxtStyle()
    ..fontSize(18)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..alignment.center()
    ..margin(right: 87, left: 87)
    ..textAlign.justify()
    ..textColor(AppColors.charcoal);

  // TweetSwipeRightImage
  static get tweetSwipeRightImage => ParentStyle()
    ..margin(bottom: 15, right: 15)
    ..alignment.bottomRight();

}