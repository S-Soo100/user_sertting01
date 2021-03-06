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
  var boxName = '??????';
  var UserValue = '??????';
  final valueList = ['??????', '??????'];

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
  var boxName = '?????? ??????';
  var UserValue = '??????';
  final valueList = ['??????', '?????????', '??????'];

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
  var boxName = '?????? ?????? ??????';
  var UserValue = '??????';
  final valueList = ['??????', '??????', '??????'];

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
            '*??????????????? ????????? ???????????? ?????? ???????????????.',
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
  var boxName = '????????? ??? ??????';
  var UserValue = '??????';
  final valueList = ['??????', '??????', '??????'];

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
  var boxName = '?????? ????????? ??????';
  var UserValue = '??? ?????????';
  final valueList = ['??? ?????????', '?????? ?????????', '?????? ?????????'];

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
