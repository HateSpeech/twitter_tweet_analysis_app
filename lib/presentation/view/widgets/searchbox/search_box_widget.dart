import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/data/repository/local/LocalRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/RemoteRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/searchbox/search_box_presenter.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/searchbox/search_box_view.dart';

class SearchBoxWidget extends StatefulWidget {

  SearchBoxWidget({Key key}) : super(key: key);

  @override
  _SearchBoxWidgetState createState() => _SearchBoxWidgetState();

}

class _SearchBoxWidgetState extends State<SearchBoxWidget> implements SearchBoxView {

  // Presenter
  SearchBoxPresenter _presenter;

  @override
  void initState() {
    super.initState();

    // TODO: Add dependency injection
    var localRepository = LocalRepositoryImpl();
    var remoteRepository = RemoteRepositoryImpl();
    var getTweet = GetTweet(localRepository, remoteRepository);
    _presenter = SearchBoxPresenter(this, getTweet);
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
                  onTap: _presenter.searchForTweet(url: "abc123"),
                  child: Parent(
                      child: AppImages.search,
                      style: AppStyles.searchImage
                  )
              )
            ]
        )
    );
  }

  @override
  void changeCurrentTweet({tweet = Tweet}) {
  }

}


