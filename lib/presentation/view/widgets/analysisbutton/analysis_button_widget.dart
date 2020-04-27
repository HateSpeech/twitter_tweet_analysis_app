import 'package:division/division.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class AnalysisButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Parent(
        style: AppStyles.tweetAnalysisButton,
        child: AppImages.test,
      )
    );
  }
}
