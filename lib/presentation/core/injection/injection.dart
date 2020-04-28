import 'package:get_it/get_it.dart';
import 'package:twittertweetanalysisapp/data/repository/local/local_repository_impl.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/remote_repository_impl.dart';
import 'package:twittertweetanalysisapp/domain/interactors/get_tweet.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  _setupCommons();
  _setupDataLayer();
  _setupDomainLayer();
  _setupPresentationLayer();
}

/// Dependency of all layers
_setupCommons() {

}

/// Data layer dependencies
_setupDataLayer() {

  // Repositories
  getIt.registerSingleton<LocalRepository>(LocalRepositoryImpl());
  getIt.registerSingleton<RemoteRepository>(RemoteRepositoryImpl());

}

/// Domain layer dependencies
_setupDomainLayer() {

  // Interactors
  getIt.registerSingleton<ValidateTwitterURL>(ValidateTwitterURL());
  getIt.registerSingleton<GetTweet>(GetTweet(getIt(), getIt(), getIt()));

}

/// Presentation layer dependencies
_setupPresentationLayer() {

  // Controllers

}