import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/searchbox/search_box_widget.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/tweetbox/tweet_box_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      body: Parent(
        style: ParentStyle()..margin(all: 8)..maxWidth(1024)..maxHeight(800)..alignment.center(),
        child: Column(
          children: [
            /// AppName
            Txt(AppStrings.appName, style: AppStyles.appName),
            /// Structure
            Expanded(
              child: Row(
                children: [
                  /// LeftMenu
                  Expanded(
                      flex: 2,
                      child: Parent(
                          style: ParentStyle()..background.color(AppColors.cultured)
                      )
                  ),
                  /// Divider
                  Parent(style: AppStyles.verticalDivider),
                  /// Body
                  Expanded(
                      flex: 3,
                      child: Parent(
                        style: ParentStyle()..borderRadius(all: 16),
                        child: Parent(
                            child: Column(
                                children: [
                                  /// Tweet View
                                  Expanded(
                                    flex: 7,
                                    child: Stack(
                                        children:[
                                          SearchBoxWidget(),
                                          TweetBoxWidget()
                                        ]
                                    ),
                                  ),
                                  Spacer(),
                                  /// Tweet Analysis
                                  Expanded(
                                    flex: 10,
                                    child: Column(
                                      children: [
                                        Parent(
                                            child: Txt(
                                              AppStrings.analysisTitle,
                                              style: AppStyles.title
                                            )
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Parent(style: ParentStyle()..background.color(AppColors.radicalRed)),
                                        ),
                                      ]
                                    ),
                                  )
                                ]
                            )
                        )
                      )
                  ),
                ],
              ),
            ),
            /// Footer
            Txt(AppStrings.rural, style: AppStyles.footer),
            Txt(AppStrings.dcc, style: AppStyles.footer),
          ]
        ),
      )
    );
  }
}
