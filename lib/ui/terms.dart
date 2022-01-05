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
                flex: 5,
              ),
              Expanded(
                flex: 43,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '이용약관',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyWebView(),
                    SizedBox(
                      height: 10,
                    ),
                    Theme(
                      data: ThemeData(
                        primarySwatch: Colors.grey,
                        unselectedWidgetColor: Colors.white,
                      ), // Your color,
                      child: Checkbox(
                          value: _termChecked,
                          onChanged: (value) {
                            setState(() {
                              _termChecked = value!;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 4,
              ),
              Expanded(
                flex: 43,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '개인정보 처리방침',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyWebView(),
                    SizedBox(
                      height: 10,
                    ),
                    Theme(
                      data: ThemeData(
                        primarySwatch: Colors.grey,
                        unselectedWidgetColor: Colors.white,
                      ), // Your color,
                      child: Checkbox(
                          value: _infoChecked,
                          onChanged: (value) {
                            setState(() {
                              _infoChecked = value!;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 5,
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
      height: 400,
      child: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl:
              'https://getthis.notion.site/UI-UX-78563709322d457684803a52ae2a09ff',
          javascriptMode: JavascriptMode.unrestricted,
        );
      }),
    );
  }
}
