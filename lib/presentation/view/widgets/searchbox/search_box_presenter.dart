import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/searchbox/search_box_view.dart';

class SearchBoxPresenter {
  // View
  SearchBoxView _view;

  // Interactors
  GetTweet _getTweet;

  SearchBoxPresenter(this._view, this._getTweet);

  searchForTweet({String url}) {
    var tweetDomain = _getTweet.withParms(tweetURL: url).execute();
    var tweetPresentation = Tweet(tweetDomain);
    _view.changeCurrentTweet(tweet: tweetPresentation);
  }

}