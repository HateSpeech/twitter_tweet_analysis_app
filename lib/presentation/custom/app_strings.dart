

class AppStrings {

  // Prevent class to be instatiated
  AppStrings._();

  // Defaults
  static get appName => "tweet.analysis";
  static get rural => "Universidade Federal Rural do Rio de Janeiro - 2020";
  static get dcc => "Departamento de Ciência da Computação";

  // SearchBox
  static get searchTooltip => "e.g. https://twitter.com/user/status/1249562332541464578";
  static get searchTitle => "Digite a URL de um tweet...";

  // TweetBox
  static get nextTweetTooltip => "Próximo";
  static get analysisTooltip => "Avaliar";
  static get analysisTitle => "Faça sua análise";

  // Errors
  static get errorTitle => "Hmmm...";
  static get genericError => "Aconteceu algum erro! 🤔";
  static get invalidTweetUrl => "A URL digitada não é válida. 🧙";

}