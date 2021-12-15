import 'package:flutter/material.dart';

class NaviButtons extends StatelessWidget {
  const NaviButtons(
      {Key? key, required this.buttonName, required this.onPressed})
      : super(key: key);

  final String buttonName;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onPressed(),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff434343),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: const TextStyle(
                color: Color(0xffffffff),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextBox extends StatelessWidget {
  const MyTextBox({
    Key? key,
    required this.boxName,
    required this.initialUserValue,
  }) : super(key: key);

  final String boxName;
  final String initialUserValue;

  @override
  Widget build(BuildContext context) {
    TextEditingController _textcontroller =
        TextEditingController(text: initialUserValue);
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
          TextFormField(
            controller: _textcontroller,
            style: TextStyle(color: Color(0xffaaaaaa), fontSize: 18),
            decoration: const InputDecoration(
              // contentPadding: EdgeInsets.zero,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 3.0),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}

class MyDataBox extends StatelessWidget {
  const MyDataBox(
      {Key? key, required this.boxName, required this.initialUserValue})
      : super(key: key);

  final String boxName;
  final String initialUserValue;

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
            height: 16,
          ),
          Text(
            initialUserValue,
            style: const TextStyle(color: Color(0xffaaaaaa), fontSize: 18),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: 450,
            height: 1,
            color: Colors.white,
          ),
          Text(
            '*해당 사항은 변경이 불가능 합니다.',
            style: TextStyle(color: Colors.deepOrange[900], fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
