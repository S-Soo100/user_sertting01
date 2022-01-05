import 'package:flutter/material.dart';
import 'package:user_setting001/web_viewer/customer_service.dart';
import 'package:user_setting001/ui/screen02.dart';
import 'package:user_setting001/ui/terms2.dart';
import 'button_ui.dart';
import 'terms.dart';

class Screen01 extends StatelessWidget {
  Screen01({Key? key}) : super(key: key);

  String version = 'version = 1.0.0(2022.02.07)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222222),
      appBar: AppBar(
        title: Center(child: Text('Test Box')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => CustomerService())),
                      print('고객 센터'),
                    }),
            const SizedBox(),
            NaviButtons(
              buttonName: '이용약관 및 개인정보 처리 방침1',
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Terms())),
                print('이용약관 및 개인정보 처리 방침1')
              },
            ),
            const SizedBox(),
            NaviButtons(
              buttonName: '이용약관 및 개인정보 처리 방침2',
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Terms2())),
                print('이용약관 및 개인정보 처리 방침1')
              },
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
          ],
        ),
      ),
    );
  }
}
