import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/tweet/tweet_controller.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class TweetBoxWidget extends StatefulWidget {
  
  TweetBoxWidget({Key key}) : super(key: key);

  @override
  _TweetBoxWidgetState createState() => _TweetBoxWidgetState();

}

class _TweetBoxWidgetState extends State<TweetBoxWidget> {

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<TweetController>(context);

    return Parent(
        style: AppStyles.tweetBox,
        child: Stack(
            children: [
              Parent(child: AppImages.quote, style: AppStyles.quoteImage),
              Observer(builder: (_) {
//                  if (state is GetTweetSuccess) {
                    return Txt(controller.tweet.content, style: AppStyles.tweetText);
//                  }

//                  if (state is GetTweetError) {
//                    return Txt(AppStrings.genericError, style: AppStyles.errorMsg);
//                  }
//
//                  if (state is GetTweetErrorInvalidURL) {
//                    return Txt(AppStrings.invalidTweetURL, style: AppStyles.errorMsg);
//                  }
//
//                  return Center(
//                    child: CircularProgressIndicator(
//                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.radicalRed),
//                    ),
//                  );
                }
              ),
              GestureDetector(
                  onTap: () => controller.getTweet(),
                  child: Parent(
                      child: AppImages.swipeRight,
                      style: AppStyles.swipeRightImage
                  )
              )
            ]
        )
    );
  }

}


