import 'package:division/division.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class PageTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Txt("tweet.analysis", style: AppStyles.pageTitle,);
  }
}
