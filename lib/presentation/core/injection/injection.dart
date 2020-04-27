import 'package:get_it/get_it.dart';
import 'package:twittertweetanalysisapp/data/repository/local/LocalRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/RemoteRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/domain/interactors/ValidateTwitterURL.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/RemoteRepository.dart';

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