import 'package:division/division.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class PageTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Txt(AppStrings.appName, style: AppStyles.homePageTitle,);
  }
}
