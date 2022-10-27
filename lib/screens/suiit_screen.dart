import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SuiitScreen extends StatelessWidget {
  static const routeName = '/suiit-screen';
  const SuiitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://suiit.ac.in/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebResourceError: (WebResourceError error) {
            print('Something went wrong!!');
          },
        ),
      ),
    );
  }
}
