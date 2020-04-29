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

class SearchBoxWidget extends StatefulWidget {

  SearchBoxWidget({Key key}) : super(key: key);

  @override
  _SearchBoxWidgetState createState() => _SearchBoxWidgetState();

}

class _SearchBoxWidgetState extends State<SearchBoxWidget> {
  TweetController tweetController;
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    tweetController = Provider.of(context);

    return Observer(builder: (_) {
        return Parent(
            style: AppStyles.searchBox,
            child: Stack(
                children: [
                  Parent(
                    child: Tooltip(
                      message: AppStrings.searchTooltip,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppStrings.searchTitle,
                          hintStyle: AppStyles.searchBoxHint,
                          fillColor: AppColors.cultured,
                        ),
                        onChanged: (value) => tweetController.validateTweetUrl(tweetUrl: value),
                        style: AppStyles.searchBoxText,
                        cursorColor: AppColors.radicalRed,
                        controller: textEditingController,
                      ),
                    ),
                    style: AppStyles.searchBoxInput,
                  ),
                  GestureDetector(
                      onTap: () => tweetController.isCurrentUrlValid ? tweetController.getSearchTweet(tweetUrl: textEditingController.text) : null,
                      child: Parent(
                        child: AppImages.search,
                        style: tweetController.isCurrentUrlValid ? AppStyles.searchImageEnabled : AppStyles.searchImageDisabled,
                      )
                  )
                ]
            )
        );
      }
    );
  }

}


