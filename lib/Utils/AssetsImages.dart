import 'package:flutter/material.dart';

class AssetsImages {
  static final String path = "assets/images/";
  static Image ImageLogo() {
    return Image.asset("${path}logo.png");
  }

  static Image ImageLauncher() {
    return Image.asset("${path}ic_launcher.png");
  }
}
