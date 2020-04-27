import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twittertweetanalysisapp/data/repository/local/LocalRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/RemoteRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_tweet_from_url.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_bloc.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class SearchBoxWidget extends StatefulWidget {

  SearchBoxWidget({Key key}) : super(key: key);

  @override
  _SearchBoxWidgetState createState() => _SearchBoxWidgetState();

}

class _SearchBoxWidgetState extends State<SearchBoxWidget> {

  TweetBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<TweetBloc>(context);
  }
  
  @override
  Widget build(BuildContext context) {
    return Parent(
        style: AppStyles.searchBox,
        child: Stack(
            children: [
              Parent(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: AppStrings.searchTitle,
                    hintStyle: AppStyles.searchBoxHint,
                    fillColor: AppColors.cultured,
                  ),
                  style: AppStyles.searchBoxText,
                  cursorColor: AppColors.radicalRed,
                  maxLength: GetTweet.urlMaxLenght,
                ),
                style: AppStyles.searchBoxInput,
              ),
              GestureDetector(
                  onTap: () => _bloc.add(GetTweetFromURL(tweetURL: "abc123")),
                  child: Parent(
                      child: AppImages.search,
                      style: AppStyles.searchImage
                  )
              )
            ]
        )
    );
  }

}


