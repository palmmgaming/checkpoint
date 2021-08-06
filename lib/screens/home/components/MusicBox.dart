import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

//size of the image = 125

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          WhiteCard(
            image: "assets/images/dog.png",
            title: "Dog wanna die",
            country: "Momayah",
            //price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(), //change later
                ),
              );
            },
          ),
          BlackCard(
            image: "assets/images/dog.png",
            title: "Dog wanna die",
            country: "Momayah",
            //price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          BlackCard(
            image: "assets/images/dog.png",
            title: "Dog wanna die",
            country: "Momayah",
            //price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class WhiteCard extends StatelessWidget {
  const WhiteCard({
    Key key,
    this.image,
    this.title,
    this.country,
    //this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  //final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: paddingleft,
        top: kPaddingTextBox,
        bottom: kPaddingMenu,
      ),
      width: 125,
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: Image.asset(image)),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title \n".toUpperCase(),
                          style: TextStyle(
                              color: const Color(0xFF111111),
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: const Color(0xFF111111),
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),

                  Spacer(),
                  Icon(Icons.play_circle_filled,
                      size:
                          25) //SvgPicture.asset("assets/icons/back_arrow.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BlackCard extends StatelessWidget {
  const BlackCard({
    Key key,
    this.image,
    this.title,
    this.country,
    //this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  //final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: paddingleft,
        top: kPaddingTextBox,
        bottom: kPaddingMenu,
      ),
      width: 125,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 3),
              decoration: BoxDecoration(
                color: const Color(0xFF111111),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title \n".toUpperCase(),
                          style: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),

                  Spacer(),
                  Icon(Icons.play_circle_filled,
                      color: const Color(0xFFFFFFFF),
                      size:
                          25) //SvgPicture.asset("assets/icons/back_arrow.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
