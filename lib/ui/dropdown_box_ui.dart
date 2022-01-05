import 'package:flutter/material.dart';

class DropdownBox extends StatefulWidget {
  DropdownBox({Key? key, required this.valueList, required this.myValue}) : super(key: key);
  List valueList;
  String myValue;

  @override
  _DropdownBoxState createState() => _DropdownBoxState();
}

class _DropdownBoxState extends State<DropdownBox> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        value: widget.myValue,
        items: widget.valueList.map(
          (value){return DropdownMenuItem<String>(
          value : value,
          child : Text(value),
            );
          },
        ).toList(),
        onChanged: (String? newValue){
          setState(() {
            widget.myValue = newValue!;
          });
        },

      ),
    );
  }
}