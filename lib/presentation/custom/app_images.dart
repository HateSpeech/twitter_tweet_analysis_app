import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/foundation.dart';

class AppImages {
  /* Prevent class to be instatiated */
  AppImages._();

  static var search = kIsWeb ? Image.network("/assets/ic_search.svg") : SvgPicture.asset('assets/ic_search.svg');

  static var quote = kIsWeb ? Image.network("/assets/ic_quote.svg") : SvgPicture.asset("assets/ic_quote.svg");

  static var swipeRight = kIsWeb ? Image.network("/assets/ic_swipe_right.svg") : SvgPicture.asset('assets/ic_swipe_right.svg');

  static var test = kIsWeb ? Image.network("/assets/ic_test.svg") : SvgPicture.asset('assets/ic_test.svg');

}