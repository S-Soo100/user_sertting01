import 'package:flutter/material.dart';

class MyDropdownBox extends StatefulWidget {
  MyDropdownBox({Key? key, required this.boxName, required this.UserValue, required this.valueList}) : super(key: key);
  String boxName;
  String UserValue;
  List valueList;

  @override
  _MyDropdownBoxState createState() => _MyDropdownBoxState();
}

class _MyDropdownBoxState extends State<MyDropdownBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.boxName,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton<String>(
            value: widget.UserValue,
            dropdownColor: const Color(0xff222222),
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            items: widget.valueList.map(
                  (value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              color: Color(0xffaaaaaa), fontSize: 18),
                        ),
                        const SizedBox(
                          width: 426,
                        ),
                      ],
                    ));
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                    () {
                      widget.UserValue = value!;
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}


class GenderDropdown extends StatefulWidget {
  GenderDropdown({Key? key}) : super(key: key);

  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  var boxName = '성별';
  var UserValue = '남자';
  final valueList = ['남자', '여자'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            boxName,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            value: UserValue,
            dropdownColor: const Color(0xff222222),
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            items: valueList.map(
              (value) {
                return DropdownMenuItem(
                    value: value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              color: Color(0xffaaaaaa), fontSize: 18),
                        ),
                        const SizedBox(
                          width: 426,
                        ),
                      ],
                    ));
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                () {
                  UserValue = value!;
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class DisableDropdown extends StatefulWidget {
  DisableDropdown({Key? key}) : super(key: key);

  @override
  _DisableDropdownState createState() => _DisableDropdownState();
}

class _DisableDropdownState extends State<DisableDropdown> {
  var boxName = '장애 유형';
  var UserValue = '척수';
  final valueList = ['척수', '뇌병변', '기타'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            boxName,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            value: UserValue,
            dropdownColor: const Color(0xff222222),
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            items: valueList.map(
              (value) {
                return DropdownMenuItem(
                  value: value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 426,
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                () {
                  UserValue = value!;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class SciDropdown extends StatefulWidget {
  SciDropdown({Key? key}) : super(key: key);

  @override
  _SciDropdownState createState() => _SciDropdownState();
}

class _SciDropdownState extends State<SciDropdown> {
  var boxName = '척수 장애 유형';
  var UserValue = '경추';
  final valueList = ['경추', '흉추', '요추'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            boxName,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            value: UserValue,
            dropdownColor: const Color(0xff222222),
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            items: valueList.map(
              (value) {
                return DropdownMenuItem(
                    value: value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 426,
                        ),
                      ],
                    ));
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                () {
                  UserValue = value!;
                },
              );
            },
          ),
          Text(
            '*척수장애를 선택한 경우에만 선택 가능합니다.',
            style: TextStyle(color: Colors.deepOrange[900], fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class GrabDropdown extends StatefulWidget {
  GrabDropdown({Key? key}) : super(key: key);

  @override
  _GrabDropdownState createState() => _GrabDropdownState();
}

class _GrabDropdownState extends State<GrabDropdown> {
  var boxName = '손아귀 힘 여부';
  var UserValue = '약함';
  final valueList = ['약함', '중간', '강함'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            boxName,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            value: UserValue,
            dropdownColor: const Color(0xff222222),
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            items: valueList.map(
              (value) {
                return DropdownMenuItem(
                    value: value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(
                          width: 426,
                        ),
                      ],
                    ));
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                () {
                  UserValue = value!;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class WaistDropdown extends StatefulWidget {
  WaistDropdown({Key? key}) : super(key: key);

  @override
  _WaistDropdownState createState() => _WaistDropdownState();
}

class _WaistDropdownState extends State<WaistDropdown> {
  var boxName = '허리 움직임 여부';
  var UserValue = '못 움직임';
  final valueList = ['못 움직임', '조금 숙여짐', '많이 숙여짐'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            boxName,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            value: UserValue,
            dropdownColor: const Color(0xff222222),
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            items: valueList.map(
              (value) {
                return DropdownMenuItem(
                  value: value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 426,
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
            onChanged: (String? value) {
              setState(
                () {
                  UserValue = value!;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
