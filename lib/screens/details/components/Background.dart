import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'dart:ui';

class BackgroundwithFilter extends StatefulWidget {
  final String data;

  const BackgroundwithFilter({
    @required this.data,
    Key key,
  }) : super(key: key);

  @override
  _BackgroundwithFilterState createState() => _BackgroundwithFilterState();
}

class _BackgroundwithFilterState extends State<BackgroundwithFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.data), fit: BoxFit.cover)),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
                color: Colors.black.withOpacity(0.45),
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ))))));
  }
}
