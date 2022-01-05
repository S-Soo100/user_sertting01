import 'package:flutter/material.dart';
import 'package:user_setting001/ui/screen03.dart';
import 'package:user_setting001/ui/screen04.dart';
import 'package:user_setting001/ui/screen05.dart';
import 'button_ui.dart';

class Screen02 extends StatelessWidget {
  Screen02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222222),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            NaviButtons(
              buttonName: '개인 정보 수정',
              onPressed: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Screen03())), // 개인 정보 수정
                print('개인 정보 수정')
              },
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '비밀번호 변경',
              onPressed: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Screen04())), //비밀번호 변경
                print('비밀번호 변경')
              },
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '추가 정보 수정',
              onPressed: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Screen05())), //추가 정보 수정
                print('추가 정보 수정')
              },
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '로그아웃',
              onPressed: () => print('로그아웃'),
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '회원 탈퇴',
              onPressed: () => print('회원 탈퇴'),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
