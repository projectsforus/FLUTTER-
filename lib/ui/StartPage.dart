import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => new _StartPageState();
}

class _StartPageState extends State<StartPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 1300),
      vsync: this,
    );

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
      DeviceOrientation.portraitUp,
    ]);
    Widget button(String label, Function onTap) {
      return FadeTransition(
          opacity: animation,
          child:SlideTransition(
            position: Tween<Offset>(begin: Offset(0.0, -0.8), end: Offset.zero)
                .animate(controller),
            child: Material(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(28.0),
              child: InkWell(
                onTap: onTap,
                splashColor: Colors.white,
                highlightColor: Colors.black12,
                //borderRadius: BorderRadius.circular(100.0),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Center(
                      child: Text(
                        label,
                        style: textStyle.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.bold
                        ),
                      ),
                    )),
              ),
            ),
          ));
    }

    return new Scaffold(
      body: new Center(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'img/StorePic.png',
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                color: Colors.white54,
              ),
            ),
            SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(left: 80.0, right: 80.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        button('تسجيل الدخول', () { Navigator.of(context).pushNamed('/Login');}),
                        SizedBox(
                          height: 15.0,
                          width: 50.0,
                        ),
                        button('الدخول كزائر', () {Navigator.of(context).pushNamed('/visitor');}),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}

const TextStyle textStyle = TextStyle(
  fontFamily: 'ModernAntiqua',
  color: Colors.black87,
);
