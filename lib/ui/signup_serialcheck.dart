import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_setting001/ui/button_ui.dart';

class SerialNumCheck extends StatefulWidget {
  const SerialNumCheck({Key? key}) : super(key: key);

  @override
  _SerialNumCheckState createState() => _SerialNumCheckState();
}

class _SerialNumCheckState extends State<SerialNumCheck> {
  late TextEditingController _serialNumberTextController;

  @override
  void initState() {
    _serialNumberTextController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xff222222),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(),
                const Text(
                  '시리얼 번호 입력',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Text(
                  '센서 박스에 부착된 라벨에서 휠리엑스의 시리얼 넘버를 확인하여 주세요.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(),
                Container(
                  width: 500,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    controller: _serialNumberTextController,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                        hintText: 'xxxx-xxxx-xxxx',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0))),
                    style: TextStyle(color: Colors.white),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ],
                  ),
                ),
                SizedBox(),
                NaviButtons(buttonName: '확인', onPressed: () {}),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
