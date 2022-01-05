import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsWebViewer extends StatefulWidget {
  const TermsWebViewer({Key? key}) : super(key: key);

  @override
  State<TermsWebViewer> createState() => _TermsWebViewerState();
}

class _TermsWebViewerState extends State<TermsWebViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xff222222),
      body: Container(
        child: Builder(builder: (BuildContext context) {
          return const TermsWebView();
        }),
      ),
    );
  }
}

class TermsWebView extends StatelessWidget {
  const TermsWebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          'https://getthis.notion.site/39b886506765438cb0235148fdea790f',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
