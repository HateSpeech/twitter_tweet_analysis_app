import 'package:division/division.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  /* Prevent class to be instatiated */
  AppStyles._();

  static const _defaultRadius = 15.0;

  /* HomePageTitle */
  static var pageTitle = TxtStyle()
  ..fontSize(18)
  ..fontFamily(GoogleFonts.roboto().fontFamily)
  ..textColor(AppColors.carolinaBlue)
  ..alignment.topLeft()
  ..padding(bottom: 32);

  /* TweetViewWidget */
  static var tweetView = ParentStyle()
  ..alignment.center()
  ..width(600)
  ..height(300)
  ..borderRadius(all: _defaultRadius)
  ..background.color(AppColors.cultured);

  /* TweetQuoteImage */
  static var tweetQuoteImage = ParentStyle()
  ..margin(left: 37, top: 37)
  ..alignment.topLeft();
  
  /* TweetTextWidget */
  static var tweetText = TxtStyle()
  ..fontSize(18)
  ..fontFamily(GoogleFonts.roboto().fontFamily)
  ..alignment.center()
  ..margin(right: 87, left: 87)
  ..textColor(AppColors.charcoal);

  /* TweetAnalysisButton */
static var tweetAnalysisButton = ParentStyle()
  ..alignment.bottomCenter()
  ..margin(top: 30)
  ..width(90)
  ..height(90)
  ..borderRadius(all: 45)
  ..background.color(AppColors.radicalRed);

}