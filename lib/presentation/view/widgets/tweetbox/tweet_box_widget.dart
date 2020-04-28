import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/domain/core/exceptions/invalid_tweet_url_exception.dart';
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
  
  @override
  Widget build(BuildContext context) {
    TweetController controller = Provider.of(context);

    return Parent(
        style: AppStyles.tweetBox,
        child: Stack(
            children: [
              Parent(child: AppImages.quote, style: AppStyles.quoteImage),
              Observer(builder: (_) {
                  if (controller.tweet.error != null) {
                    return _handleTweetError(controller.tweet.error);
                  }

                  if (controller.tweet.value == null) {
                    return _handleTweetLoading();
                  }

                  return _handleTweetSuccess(controller.tweet.value);
                }
              ),
              GestureDetector(
                  onTap: () => controller.getTweet(),
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
    if (error is InvalidTweetURLException) {
      return Txt(AppStrings.invalidTweetURL, style: AppStyles.errorMsg);
    }

    return Txt(AppStrings.genericError, style: AppStyles.errorMsg);
  }

}


