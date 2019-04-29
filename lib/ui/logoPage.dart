import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogoPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<LogoPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    new Timer(const Duration(seconds: 2), onClose);

    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final logo = ScaleTransition (
      scale: animation,
      child: Image.asset(
        'img/logo.png',
      ),
    );

    return new Scaffold(
      body: new Center(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'img/StorePic.png',
              fit: BoxFit.cover,
            ),
            SafeArea(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: logo,
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }

  // الانتقال الي الصفحة الاخري
  void onClose() {
    Navigator.of(context).pushNamedAndRemoveUntil('/StartPage'
            ,(Route<dynamic> route)=>false);
  }
}
