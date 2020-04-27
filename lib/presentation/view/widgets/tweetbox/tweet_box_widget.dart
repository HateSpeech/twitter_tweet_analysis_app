import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_random_tweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_error.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_success.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_uninitialized.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_bloc.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_state.dart';
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

  TweetBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<TweetBloc>(context);
  }
  
  @override
  Widget build(BuildContext context) {

    return Parent(
        style: AppStyles.tweetBox,
        child: Stack(
            children: [
              Parent(child: AppImages.quote, style: AppStyles.quoteImage),
              BlocBuilder<TweetBloc, TweetState>(
                builder: (context, state) {
                  if (state is GetTweetSuccess) {
                    return Txt(state.tweet.content, style: AppStyles.tweetText);
                  }

                  if (state is GetTweetError) {
                    return Txt(AppStrings.genericError, style: AppStyles.tweetText);
                  }

                  return Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.radicalRed),
                    ),
                  );
                }
              ),
              GestureDetector(
                  onTap: () => _bloc.add(GetRandomTweet()),
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


