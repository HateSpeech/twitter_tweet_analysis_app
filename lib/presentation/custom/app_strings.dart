

class AppStrings {

  // Prevent class to be instatiated
  AppStrings._();

  // Defaults
  static get appName => "tweet.analysis";

  // SearchBox
  static get searchTooltip => "e.g. https://twitter.com/user/status/1249562332541464578";
  static get searchTitle => "Digite a URL de um tweet...";

  // TweetBox
  static get nextTweetTooltip => "Próximo";
  static get analysisTooltip => "Avaliar";

  // Errors
  static get errorTitle => "Hmmm...";
  static get genericError => "Aconteceu algum erro! 🤔";
  static get invalidTweetURL => "A URL digitada não é válida. 🧙";

}