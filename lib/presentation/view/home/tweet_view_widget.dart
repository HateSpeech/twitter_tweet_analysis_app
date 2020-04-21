import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

import 'page_title_widget.dart';

class TweetViewWidget extends StatefulWidget {
  TweetViewWidget({Key key}) : super(key: key);

  @override
  _TweetViewWidgetState createState() => _TweetViewWidgetState();
}

class _TweetViewWidgetState extends State<TweetViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Parent(
        style: AppStyles.tweetView,
        child: Stack(
          children: [
            Parent(child: AppImages.quote, style: AppStyles.tweetQuoteImage),
            Txt("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat mas", style: AppStyles.tweetText)
          ]
      )
    );
  }
}