import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {

  // Prevent class to be instatiated
  AppStyles._();

  /// ---
  /// Commons
  /// ---
  static get _defaultRadius => 15.0;

  /// ---
  /// Widgets
  /// ---
  // HomePageTitle
  static get homePageTitle => TxtStyle()
    ..fontSize(11)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..textColor(AppColors.cultured)
    ..alignment.topLeft()
    ..margin(left: 16, bottom: 8);

  // HomePageContainer
  static get homePageContainer => ParentStyle()
    ..maxWidth(500)
    ..margin(left: 16, right: 16)
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

  // TweetBoxWidget
  static get tweetBox => ParentStyle()
    ..height(200)
    ..borderRadius(all: _defaultRadius)
    ..background.color(AppColors.cultured)
    ..margin(top: 57, bottom: 40);

  // TweetTextWidget
  static get tweetText => TxtStyle()
    ..fontSize(16)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..alignment.center()
    ..textAlign.justify()
    ..margin(all: 32)
    ..textColor(AppColors.charcoal);

  // ErrorMsg
  static get errorMsg => TxtStyle()
    ..fontSize(16)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..alignment.center()
    ..textAlign.justify()
    ..margin(all: 32)
    ..textColor(AppColors.radicalRed);

  // TweetAnalysisButton
  static get tweetAnalysisButton => ParentStyle()
    ..width(80)
    ..height(80)
    ..borderRadius(all: 40)
    ..background.color(AppColors.radicalRed);

  /// ---
  /// Images
  /// ---
  // SearchImage
  static get searchImageEnabled => ParentStyle()
    ..margin(top: 20, right: 20)
    ..alignment.topRight();
  
  // SearchImageDisabled
  static get searchImageDisabled => ParentStyle()
    ..margin(top: 20, right: 20)
    ..alignment.topRight()
    ..opacity(0.1);

  // QuoteImage
  static get quoteImage => ParentStyle()
    ..width(30)
    ..height(30)
    ..margin(top: 15, left: 15)
    ..opacity(0.07);

  // SwipeRightImage
  static get swipeRightImage => ParentStyle()
    ..width(37)
    ..height(37)
    ..margin(bottom: 15, right: 15)
    ..alignment.bottomRight();

  // ListImage
  static get listImage => ParentStyle()
    ..width(30)
    ..height(30)
    ..alignment.center();

}