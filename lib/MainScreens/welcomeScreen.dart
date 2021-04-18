import 'package:flutter/material.dart';
import 'package:helshop/Utils/TextApp.dart';
import 'package:helshop/Widgets/designWidgets.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

Widget _loginButton(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 50.0, bottom: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () => print("Login"),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      color: Colors.white,
      child: Text(
        TextAPP.LOGIN,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget _signUpButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlineButton(
      borderSide: BorderSide(color: Colors.white),
      highlightedBorderColor: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () => print("SigUp"),
      child: Text(
        TextAPP.SINGUP,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  );
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: DesignWidgets.linearGradientMain(context)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DesignWidgets.titleCustom(),
                _loginButton(context),
                _signUpButton(context)
              ]),
        ),
      ),
    ));
  }
}
