import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui';

import 'package:plant_app/components/boxContainer.dart';
import 'package:plant_app/components/status_button.dart';
import 'package:plant_app/screens/home/components/ambient.dart';
import '../../../constants.dart';
import 'package:plant_app/screens/home/components/featurred_plants.dart';
//import 'package:plant_app/screens/home/components/header_with_seachbox.dart';
import 'package:plant_app/screens/home/components/MusicBox.dart';
import 'package:plant_app/screens/home/components/TitleMenu.dart';

class HomeScreen extends StatefulWidget {
  final String data;

  const HomeScreen({
    @required this.data,
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(),
        //bottomNavigationBar: MyBottomNavBar(),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.data), fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.black.withOpacity(0.45),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //HeaderWithSearchBox(size: size),
                SizedBox(height: 130),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                TextBox(),
                TitleWithMoreBtn(title: "Mood", press: () {}),
                //StatusButton(),
                FeaturedPlants(),
                TitleWithStatusButton(title: "Music", press: () {}),
                //FeaturedPlants(),
                RecomendsPlants(),
                TitleWithStatusButton(title: "Ambient", press: () {}),
                Ambient(),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          )
        ]));
  }

  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: const Text('Check Point'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/images/logo_checkpoint.png"),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.dark_mode_outlined,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.alarm),
              )),
        ]);
  }
}
