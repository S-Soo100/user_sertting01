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
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.blur_on),
          )
        ],
      ),
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
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
          GestureDetector(
            onTap: () {
              setState(() {
                if (_allChecked = false) {
                  _allChecked = true;
                  _infoChecked = true;
                  _termChecked = true;
                } else if (_allChecked = true) {
                  _allChecked = false;
                  _infoChecked = false;
                  _termChecked = false;
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '모두 동의합니다.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Theme(
                  data: ThemeData(
                    primarySwatch: Colors.grey,
                    unselectedWidgetColor: Colors.white,
                  ), // Your color,
                  child: Checkbox(
                      value: _allChecked,
                      onChanged: (value) {
                        setState(() {
                          _allChecked = value!;
                          _infoChecked = value;
                          _termChecked = value;
                        });
                      }),
                ),
              ],
            ),
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
