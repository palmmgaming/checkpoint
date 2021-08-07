import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'dart:ui';

import 'package:plant_app/components/boxContainer.dart';
//import 'package:plant_app/components/status_button.dart';
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
  //var heightFromAppBar = AppBar().preferredSize.height;

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
                    children: <Widget>[
                      //HeaderWithSearchBox(size: size),
                      // SizedBox(height: 56 + kPaddingMenu),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      HomeAppBar(),
                      //SizedBox(height: 12),
                      TextBox(),
                      SizedBox(
                        height: 12,
                      ),
                      TitleWithMoreBtn(title: "Mood", press: () {}),
                      //StatusButton(),
                      FeaturedPlants(),
                      TitleWithStatusButton(title: "Music", press: () {}),
                      //FeaturedPlants(),
                      RecomendsPlants(),
                      TitleWithStatusButton(title: "Ambient", press: () {}),
                      Ambient(),
                      //SizedBox(height: kDefaultPadding),
                    ],
                  ),
                ))),
      ),
    );

    /*
    Scaffold(
        extendBodyBehindAppBar: true,
        appBar: TestAppBar(),
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //HeaderWithSearchBox(size: size),
                SizedBox(height: 56 + kPaddingMenu),

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
        */
  }
}

/*
  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: const Text('Check Point',
            style: TextStyle(fontWeight: FontWeight.bold)),
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
*/

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: const Text('Check Point',
            style: TextStyle(fontWeight: FontWeight.w500)),
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

  @override
  Size get preferredSize => Size.fromHeight(56);
}
