import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import '../../../constants.dart';

class MoodBody extends StatefulWidget {
  final String data;

  const MoodBody({
    @required this.data,
    Key key,
  }) : super(key: key);

  @override
  _MoodBodyState createState() => _MoodBodyState();
}

class _MoodBodyState extends State<MoodBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.data), fit: BoxFit.cover)),
        ),
        //... Button
        Container(
          alignment: Alignment(-1.0, -0.8),
          child: IconButton(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            icon: Icon(Icons.more_vert,
                size: 30), //SvgPicture.asset("assets/icons/back_arrow.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(data: widget.data),
                ),
              );
            },
          ),
        ),

        //Play Button
        Container(
          alignment: Alignment.center,
          child: IconButton(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            icon: Icon(
              Icons.play_circle_filled,
              size: 50.0,
              color: Color(0xFFFFFF).withOpacity(0.8),
            ), //SvgPicture.asset("assets/icons/back_arrow.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HomeScreen(data: widget.data), //change this later
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
