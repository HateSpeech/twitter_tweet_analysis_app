import 'package:division/division.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/classification/classification_controller.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class AnalysisButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ClassificationController controller = Provider.of(context);

    return GestureDetector(
      onTap: () => controller.getClassifications(),
      child: Parent(
        style: AppStyles.tweetAnalysisButton,
        child: Parent(
          child: AppImages.editProperty,
          style: AppStyles.listImage,
        )
      )
    );
  }
}
