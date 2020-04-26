import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/tweetbox/tweet_box_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoal,
      body: TweetBoxWidget(),
    );
  }
}
