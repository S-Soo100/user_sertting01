import 'package:flutter/material.dart';
import 'package:user_setting001/ui/screen02.dart';
import 'button_ui.dart';

class Screen01 extends StatelessWidget {
  Screen01({Key? key}) : super(key: key);

  String version = 'version = 1.0.0(2022.02.07)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222222),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            NaviButtons(
              buttonName: '프로필 정보 수정',
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Screen02())),
                print('프로필 정보 수정')
              },
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '블루투스 재설정',
              onPressed: () => print('블루투스 재설정'),
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '고객 센터',
              onPressed: () => print('고객 센터'),
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '이용약관 및 개인정보 처리 방침',
              onPressed: () => print('이용약관 및 개인정보 처리 방침'),
            ),
            const SizedBox(),
            Text(
              version,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
