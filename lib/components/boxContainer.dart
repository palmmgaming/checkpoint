import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:plant_app/screens/home/home_screen.dart';

import '../constants.dart';

//import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
        /*
        padding: EdgeInsets.only(
            left: kDefaultPadding * 2,
            right: kDefaultPadding * 2,
            bottom: kDefaultPadding),
            */
        children: <Widget>[
          Container(
            //constraints: BoxConstraints(maxWidth: 325),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: 10,
              bottom: 15,
              left: 10,
              right: 25,
            ),
            //width: 325,
            height: 50,

            //scrollDirection: Axis.horizontal,
            child: Wrap(
              children: <Widget>[
                boxContainerCard(
                  // image: "assets/images/image_1.png",
                  title: "Preset 1",
                  //country: "Russia",
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
                BlackBoxContainerCard(
                  // image: "assets/images/image_2.png",
                  title: "Preset 2",
                  //country: "Russia",
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
                BlackBoxContainerCard(
                  //image: "assets/images/image_3.png",
                  title: "Preset 3",
                  // country: "Russia",
                  //price: 440,
                  press: () {},
                ),
              ],
            ),
          )
        ]);
  }
}

class boxContainerCard extends StatelessWidget {
  const boxContainerCard({
    Key key,
    //this.image,
    this.title,
    //this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: paddingleft,
        //bottom: kPaddingMenu,
      ),
      width: 75,
      height: 25,
      child: Wrap(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text("$title",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BlackBoxContainerCard extends StatelessWidget {
  const BlackBoxContainerCard({
    Key key,
    //this.image,
    this.title,
    //this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: paddingleft,
        //bottom: kPaddingMenu,
      ),
      width: 75,
      height: 25,
      child: Wrap(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color(0xFF111111),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text("$title",
                    style: TextStyle(
                        color: const Color(0xFF333333),
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
