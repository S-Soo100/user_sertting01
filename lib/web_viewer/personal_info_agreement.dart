import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoWebViewer extends StatefulWidget {
  const InfoWebViewer({Key? key}) : super(key: key);

  @override
  State<InfoWebViewer> createState() => _InfoWebViewerState();
}

class _InfoWebViewerState extends State<InfoWebViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xff222222),
      body: Container(
        child: Builder(builder: (BuildContext context) {
          return const InfoWebView();
        }),
      ),
    );
  }
}

class InfoWebView extends StatelessWidget {
  const InfoWebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          'https://getthis.notion.site/342e021260bb490c974190bacde6fe88',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
