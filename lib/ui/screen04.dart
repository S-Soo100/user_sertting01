import 'package:flutter/material.dart';
import 'button_ui.dart';

class Screen04 extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Screen04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222222),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '비밀번호 변경',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(),
                const MyTextBox(
                  boxName: '기존 비밀번호',
                  initialUserValue: '',
                ),
                const MyTextBox(
                  boxName: '신규 비밀번호',
                  initialUserValue: '',
                ),
                const MyTextBox(
                  boxName: '신규 비밀번호 확인',
                  initialUserValue: '',
                ),
                NaviButtons(
                    buttonName: '비밀번호 변경하기',
                    onPressed: () => {
                          Navigator.of(context).pop(
                              MaterialPageRoute(builder: (_) => Screen04())),
                          print('p/w changed')
                        }),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
