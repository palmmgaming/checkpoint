import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
//import '../constants.dart';

class StatusButton extends StatefulWidget {
  const StatusButton({Key key}) : super(key: key);

  @override
  _StatusButtonState createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterSwitch(
        width: 125.0 / 3,
        height: 55.0 / 3,
        valueFontSize: 25.0,
        toggleSize: 45.0 / 3,
        value: status,
        borderRadius: 30.0,
        padding: 3.0,
        showOnOff: false,
        onToggle: (val) {
          setState(() {
            status = val;
          });
        },
      ),
    );
  }
}
