import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({Key? key}) : super(key: key);

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xff222222),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Builder(builder: (BuildContext context) {
          return const CcWebView();
        }),
      ),
    );
  }
}

class CcWebView extends StatelessWidget {
  const CcWebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          'https://getthis.notion.site/e25e719d44e04268be55f84348a5b844',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
