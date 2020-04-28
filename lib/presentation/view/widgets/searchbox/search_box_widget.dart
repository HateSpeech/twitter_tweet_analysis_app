import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/tweet/tweet_controller.dart';
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

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<TweetController>(context);

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
                  maxLength: ValidateTwitterURL.urlMaxLenght,
                  controller: textEditingController,
                ),
                style: AppStyles.searchBoxInput,
              ),
              GestureDetector(
                  onTap: () => controller.getTweet(tweetURL: textEditingController.text),
                  child: Parent(
                      child: AppImages.search,
                      style: AppStyles.searchImage,
                  )
              )
            ]
        )
    );
  }

}


