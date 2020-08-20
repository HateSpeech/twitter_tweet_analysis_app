import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppImages {
  // Prevent class to be instatiated
  AppImages._();

  static get _twitterIconPath => "/assets/icons8-twitter-squared.svg";
  static get twitterLogo => kIsWeb ? Image.network(_twitterIconPath) : SvgPicture.asset(_twitterIconPath);
  
  static get _addFolderIconPath => "/assets/icons8-add-folder.svg";
  static get addFolder => kIsWeb ? Image.network(_addFolderIconPath) : SvgPicture.asset(_addFolderIconPath);

  static get _quoteIconPath => "/assets/icons8-quote.svg";
  static get quote => kIsWeb ? Image.network(_quoteIconPath) : SvgPicture.asset(_quoteIconPath);

  static get _redoIconPath => "/assets/icons8-redo.svg";
  static get redo => kIsWeb ? Image.network(_redoIconPath) : SvgPicture.asset(_redoIconPath);

  static get _editPropertyIconPath => "/assets/icons8-edit-property.svg";
  static get editProperty => kIsWeb ? Image.network(_editPropertyIconPath) : SvgPicture.asset(_editPropertyIconPath);

}