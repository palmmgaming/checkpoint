import 'package:flutter/material.dart';
//import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/details/components/MoodBody.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          WhiteMood(
            image: "assets/images/3.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MoodBody(data: "assets/images/3.jpg")),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/5.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/5.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/6.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/6.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/1.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/1.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/2.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/2.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/4.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/4.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/7.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/7.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/8.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/8.jpg"),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/9.jpg",
            press: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodBody(data: "assets/images/9.jpg"),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
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
        width: 250,
        height: 150,
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

class WhiteMood extends StatelessWidget {
  const WhiteMood({
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
        width: 250,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
