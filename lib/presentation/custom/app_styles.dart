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
  static get _defaultRadius => 16.0;
  static get _defaultFontFamily => GoogleFonts.raleway().fontFamily;

  static get appName => TxtStyle()
    ..fontSize(11)
    ..fontFamily(_defaultFontFamily)
    ..textColor(AppColors.cultured)
    ..alignment.bottomLeft();

  static get footer => TxtStyle()
    ..fontSize(11)
    ..fontFamily(_defaultFontFamily)
    ..textColor(AppColors.cultured)
    ..alignment.bottomLeft()
    ..opacity(.3);
  
  static get verticalDivider => ParentStyle()
    ..background.color(AppColors.cultured)
    ..width(4)
    ..height(160)
    ..margin(all: 16)
    ..borderRadius(all: _defaultRadius);

  static get horizontalDivider => ParentStyle()
    ..background.color(AppColors.cultured)
    ..width(160)
    ..height(4)
    ..margin(all: 16)
    ..borderRadius(all: _defaultRadius);

  static get title => TxtStyle()
    ..textColor(AppColors.cultured)
    ..fontSize(32)
    ..fontFamily(_defaultFontFamily)
    ..alignmentContent.bottomLeft();

  /// ---
  /// Widgets
  /// ---
  // AddTweetBoxWidget
  static get addTweetBox => ParentStyle()
    ..height(80);

  // AddTweetBoxInputWidget
  static get addTweetBoxInput => ParentStyle()
    ..margin(left: 8, right: 50);

  // SearchBoxTextWidget
  static get searchBoxText => TextStyle(
    color: AppColors.cultured,
    fontFamily: _defaultFontFamily,
    fontSize: 24,
  );

  // SearchBoxHintWidget
  static get searchBoxHint => TextStyle(
      color: AppColors.cultured.withOpacity(0.2),
      fontFamily: _defaultFontFamily,
      fontSize: 32
  );

  // TweetBoxWidget
  static get tweetBox => ParentStyle()
    ..borderRadius(all: _defaultRadius)
    ..background.color(AppColors.cultured)
    ..margin(top: 57);

  // TweetTextWidget
  static get tweetText => TxtStyle()
    ..fontSize(16)
    ..fontFamily(_defaultFontFamily)
    ..alignment.center()
    ..textAlign.justify()
    ..margin(left: 32, right: 32)
    ..textColor(AppColors.gray1);

  // ErrorMsg
  static get errorMsg => TxtStyle()
    ..fontSize(16)
    ..fontFamily(_defaultFontFamily)
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
  // QuoteImage
  static get twitterImage => ParentStyle()
    ..width(15)
    ..height(15)
    ..margin(right: 8)
    ..alignment.topLeft();

  // AddFolderEnabled
  static get addFolderImageEnabled => ParentStyle()
    ..margin(top: 15, right: 15)
    ..height(30)
    ..alignment.topRight();
  
  // AddFolderEnabled
  static get addFolderImageDisabled => ParentStyle()
    ..margin(top: 15, right: 15)
    ..height(30)
    ..alignment.topRight()
    ..opacity(0.2);

  // QuoteImage
  static get quoteImage => ParentStyle()
    ..width(30)
    ..height(30)
    ..margin(top: 15, left: 15)
  ..alignment.topLeft();

  // SwipeRightImage
  static get redoImage => ParentStyle()
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