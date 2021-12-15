import 'package:flutter/material.dart';
import 'button_ui.dart';
import 'drop_downs.dart';

class Screen05 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Screen05({Key? key}) : super(key: key);

  @override
  State<Screen05> createState() => _Screen05State();
}

class _Screen05State extends State<Screen05> {
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
                const SizedBox(height: 40),
                // MyDropdownButton(),
                const Text(
                  '추가 정보 수정',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                DisableDropdown(), // 장애유형
                SciDropdown(), //척수장애유형
                GrabDropdown(), //손아귀
                WaistDropdown(), //허리
                NaviButtons(
                    buttonName: '확인',
                    onPressed: () => {
                          Navigator.of(context).pop(
                              MaterialPageRoute(builder: (_) => Screen05())),
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
