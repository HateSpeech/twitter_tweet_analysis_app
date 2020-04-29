import 'package:bot_toast/bot_toast.dart';
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
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';

class TweetBoxWidget extends StatefulWidget {
  
  TweetBoxWidget({Key key}) : super(key: key);

  @override
  _TweetBoxWidgetState createState() => _TweetBoxWidgetState();

}

class _TweetBoxWidgetState extends State<TweetBoxWidget> {
  TweetController tweetController;
  
  @override
  Widget build(BuildContext context) {
    tweetController = Provider.of(context);

    return Parent(
        style: AppStyles.tweetBox,
        child: Column(
            children: [
              Parent(child: AppImages.quote, style: AppStyles.quoteImage),
              Expanded(
                child: Observer(builder: (_) {
                    if (tweetController.currentTweet.error != null) {
                      return _handleTweetError(tweetController.currentTweet.error);
                    }

                    if (tweetController.currentTweet.value == null) {
                      return _handleTweetLoading();
                    }

                    return _handleTweetSuccess(tweetController.currentTweet.value);
                  }
                ),
              ),
              GestureDetector(
                  onTap: () => tweetController.getTweet(),
                  child: Parent(
                      child: Tooltip(
                        message: AppStrings.nextTweetTooltip,
                        child: AppImages.swipeRight
                      ),
                      style: AppStyles.swipeRightImage
                  )
              )
            ]
        )
    );
  }

  Widget _handleTweetSuccess(Tweet tweet) {
    return Txt(tweet.content, style: AppStyles.tweetText);
  }

  Widget _handleTweetLoading() {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.radicalRed),
      ),
    );
  }

  Widget _handleTweetError(error) {
    BotToast.showSimpleNotification(title: AppStrings.errorTitle, subTitle: AppStrings.genericError);
    return Txt("");
  }

}


