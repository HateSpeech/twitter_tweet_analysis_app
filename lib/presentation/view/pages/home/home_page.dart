import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/analysisbutton/analysis_button_widget.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/searchbox/search_box_widget.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/tweetbox/tweet_box_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoal,
      body: Parent(
        style: AppStyles.homePageContainer,
        child: Wrap(
          children: [
            Txt(AppStrings.appName, style: AppStyles.homePageTitle),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children:[
                SearchBoxWidget(),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    TweetBoxWidget(),
                    AnalysisButtonWidget()
                  ]
                )
              ]
            )
          ]
        )
      )
    );
  }
}
