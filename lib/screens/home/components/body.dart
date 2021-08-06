import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

//DOESNT USE ANYMORE

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/5.jpg"), fit: BoxFit.cover)),
      ),
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(title: "Mood", press: () {}),
            FeaturedPlants(),
            TitleWithMoreBtn(title: "Music", press: () {}),
            //FeaturedPlants(),
            RecomendsPlants(),
            TitleWithMoreBtn(title: "Ambient", press: () {}),
            FeaturedPlants(),
            SizedBox(height: kDefaultPadding),
          ],
        ),
      )
    ]));
  }
}
