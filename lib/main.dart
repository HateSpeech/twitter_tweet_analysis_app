import 'package:bot_toast/bot_toast.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/presentation/core/injection/injection.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/classification/classification_controller.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/tweet/tweet_controller.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_colors.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';
import 'package:twittertweetanalysisapp/presentation/view/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  setupDependencyInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var providers = [
      Provider<TweetController>(create: (_) => TweetController(getIt(), getIt(), getIt())),
      Provider<ClassificationController>(create: (_) => ClassificationController(getIt()))
    ];

    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
            child: Txt(
                AppStrings.genericError,
                style: AppStyles.errorMsg
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiProvider(
            providers: providers,
            child: BotToastInit(
              child: MaterialApp(
                  title: AppStrings.appName,
                  theme: ThemeData(
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  ),
                  home: HomePage(),
                  navigatorObservers: [
                    BotToastNavigatorObserver()
                  ]
              ),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.radicalRed),
          ),
        );
      },
    );
  }
}
