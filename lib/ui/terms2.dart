import 'package:flutter/material.dart';
import 'package:user_setting001/ui/button_ui.dart';
import 'package:user_setting001/web_viewer/personal_info_agreement.dart';
import 'package:user_setting001/web_viewer/terms_web.dart';

class Terms2 extends StatefulWidget {
  const Terms2({Key? key}) : super(key: key);

  @override
  State<Terms2> createState() => _Terms2State();
}

class _Terms2State extends State<Terms2> {
  bool _termChecked = false;
  bool _infoChecked = false;
  bool _marketingChecked = false;
  bool _allChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xff222222),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                              _marketingChecked = value;
                            });
                          }),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '이용약관, 개인정보 수집 및 이용, 프로모션',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '알림 메일 및 푸시 알림 수신(선택)에 모두 동의합니다.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.grey[200],
                width: 440,
                height: 1,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                // 약관 동의 시작
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    Row(
                      children: [
                        Text(
                          '휠리엑스의 이용약관에 동의합니다.  ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '(필수)',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => TermsWebViewer())),
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('전문보기'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 2, 6, 2),
                height: 100,
                width: 460,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(blurRadius: 3),
                  ],
                ),
                child: Scrollbar(
                  child: Container(
                    padding: EdgeInsets.all(6),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        termsText,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ), //약관 동의 끝
              SizedBox(
                height: 10,
              ),
              Container(
                // 개인정보 동의 시작
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    Row(
                      children: [
                        Text(
                          '개인정보 처리방침에 동의합니다.  ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '(필수)',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => InfoWebViewer())),
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text('전문보기'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: 460,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(blurRadius: 3),
                  ],
                ),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      termsText,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ), //개인정보 동의 끝
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Theme(
                      data: ThemeData(
                        primarySwatch: Colors.grey,
                        unselectedWidgetColor: Colors.white,
                      ), // Your color,
                      child: Checkbox(
                          value: _marketingChecked,
                          onChanged: (value) {
                            setState(() {
                              _marketingChecked = value!;
                            });
                          }),
                    ),
                    Row(
                      children: [
                        Text(
                          '프로모션 정보 수신에 동의합니다.  ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '(선택)',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                width: 460,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    '캥스터즈에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화, 이메일, 푸쉬알림으로 받아보실 수 있습니다.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              NaviButtons(buttonName: '다음', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

String termsText = '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요'
    '이것은 이용약관이 들어갈 자리 입니다 하지만 뭐라고 적을 지 잘 모르겠어요';
