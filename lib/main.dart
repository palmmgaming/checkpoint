import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/MoodBody.dart';
//import 'package:plant_app/screens/home/home_screen.dart';
//import 'package:plant_app/screens/details//details_screen.dart';
import 'dart:async';

void main() {
  /*
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);

  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(

        //combine Material with Cupertino
        debugShowCheckedModeBanner: false,
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],

        //debugShowCheckedModeBanner: false,
        title: 'Check Point',
        theme: const CupertinoThemeData(brightness: Brightness.light),
        home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => MoodBody(data: "assets/images/3.jpg")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/logo_checkpoint.png',
              height: 120,
            ),

            //Text below logo
            /*
            Text('Check Point',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                )),

            Text('Hapiness in One Click',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.white,
                )),
                */
            SizedBox(
              height: 20,
            ),

            //Circular Loading Animation
            /*
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
            */
          ],
        ),
      ),
    );
  }
}
