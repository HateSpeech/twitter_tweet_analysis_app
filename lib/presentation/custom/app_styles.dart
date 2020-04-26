import 'package:division/division.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {

  // Prevent class to be instatiated
  AppStyles._();

  static get _defaultRadius => 15.0;

  // HomePageTitle
  static get pageTitle => TxtStyle()
    ..fontSize(18)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..textColor(AppColors.carolinaBlue)
    ..alignment.topLeft()
    ..padding(bottom: 32);

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
    ..alignment.topCenter()
    ..width(600)
    ..height(80)
    ..borderRadius(topLeft: _defaultRadius, topRight: _defaultRadius)
    ..background.color(AppColors.radicalRed);

  // SearchBoxInputWidget
  static get searchBoxInput => ParentStyle()
    ..background.color(AppColors.carolinaBlue);

  // SearchBoxHintWidget
  static get searchBoxHint => TxtStyle()
    ..fontSize(14)
    ..fontFamily(GoogleFonts.roboto().fontFamily)
    ..textAlign.left()
    ..textColor(AppColors.charcoal);

  // SearchImage
  static get searchImage => ParentStyle()
    ..background.color(AppColors.radicalRed);

  // TweetBoxWidget
  static get tweetBox => ParentStyle()
    ..alignment.center()
    ..width(600)
    ..height(300)
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