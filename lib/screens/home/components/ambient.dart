import 'package:flutter/material.dart';
//import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/details/components/MoodBody.dart';

import '../../../constants.dart';

class Ambient extends StatelessWidget {
  const Ambient({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          WhiteAmbientCard(
            image: "assets/images/2.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MoodBody(data: "assets/images/4.jpg")),
              );
            },
          ),
          AmbientCard(
            image: "assets/images/6.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/5.jpg"),
                ),
              );
            },
          ),
          AmbientCard(
            image: "assets/images/4.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/5.jpg"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AmbientCard extends StatelessWidget {
  const AmbientCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: paddingleft,
          top: kPaddingTextBox,
          bottom: kPaddingMenu,
        ),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

class WhiteAmbientCard extends StatelessWidget {
  const WhiteAmbientCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: paddingleft,
          top: kPaddingTextBox,
          bottom: kPaddingMenu,
        ),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          //borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
