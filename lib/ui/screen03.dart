import 'package:flutter/material.dart';
import 'package:user_setting001/ui/drop_downs.dart';
import 'button_ui.dart';

class Screen03 extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Screen03({Key? key}) : super(key: key);

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
                  height: 40,
                ),
                const Text(
                  '개인 정보 수정',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(),
                const MyDataBox(
                  boxName: '이메일',
                  initialUserValue: 'Email@initial.com',
                ),
                const MyTextBox(
                  boxName: '이름',
                  initialUserValue: 'Hong Gildong',
                ),
                const MyTextBox(
                  boxName: '전화번호',
                  initialUserValue: '010-0000-0000',
                ),
                GenderDropdown(), //성별 선택 드롭다운
                MyDropdownBox(
                    boxName: 'Your Gender',
                    UserValue: 'Male',
                    valueList: ['Male', 'Female']),
                const MyTextBox(
                  boxName: '체중',
                  initialUserValue: '85',
                ),
                NaviButtons(
                    buttonName: '확인',
                    onPressed: () => {
                          Navigator.of(context).pop(
                            MaterialPageRoute(builder: (_) => Screen03()),
                          ),
                          print('checked')
                        }),
                const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
