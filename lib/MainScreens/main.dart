import 'package:flutter/material.dart';
import 'package:helshop/MainScreens/welcomeScreen.dart';
import 'package:helshop/Utils/AssetsImages.dart';
import 'package:helshop/Utils/ConstantsApp.dart';
import 'package:helshop/Utils/TextApp.dart';
import 'package:helshop/Widgets/designWidgets.dart';
import 'package:splashscreen/splashscreen.dart';

import 'homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff2c2b50),
        accentColor: Color(0xffedecee),
        primaryColorLight: Color(0xff57547c),
        primaryColorDark: Color(0xff050028),
        // backgroundColor: Color(0xffffffff),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: ConstantsAPP.TIME_SPLASH_SCREEN,
      navigateAfterSeconds: WelcomeScreen(),
      image: AssetsImages.ImageLogo(),
      backgroundColor: Colors.white,
      photoSize: 110,
      loaderColor: Theme.of(context).accentColor,
      loadingText: Text(
        TextAPP.LOADING,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      gradientBackground: DesignWidgets.linearGradientMain(context),
    );
  }
}
