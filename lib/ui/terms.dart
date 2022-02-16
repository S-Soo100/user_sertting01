import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool _termChecked = false;
  bool _infoChecked = false;
  bool _allChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xff222222),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
                flex: 2,
              ),
              Expanded(
                flex: 43,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '이용약관',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyWebView(),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 2,
              ),
              Expanded(
                flex: 43,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '개인정보 처리방침',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyWebView(),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyWebView extends StatelessWidget {
  const MyWebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl:
              'https://getthis.notion.site/342e021260bb490c974190bacde6fe88',
          javascriptMode: JavascriptMode.unrestricted,
        );
      }),
    );
  }
}
