import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDescriptionScreen extends StatelessWidget {
  static const routeName = '/news-description-screen';
  const NewsDescriptionScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Map<String, dynamic> article = routeArgs['article']; // is a map
    String url = article['url'];
    return SafeArea(
      child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebResourceError: (WebResourceError error) {
          print('Something went wrong!!');
        },
      ),
    );
  }
}
