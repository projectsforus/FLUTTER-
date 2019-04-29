import 'package:flutter/material.dart';
import 'package:wahb/GUI/home.dart';
import 'package:wahb/GUI/sub.dart';
import 'package:wahb/GUI/signup.dart';
import 'package:wahb/ui/home.dart';
import 'package:wahb/GUI/login.dart';
import 'package:wahb/ui/StartPage.dart';
import 'package:wahb/ui/logoPage.dart';
import 'package:wahb/ui/VisitorPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String , WidgetBuilder>{
        '/Home': (BuildContext  context) => new Home(),
        '/Login': (BuildContext  context) => new LoginPage(),
        '/Signup': (BuildContext  context) => new Siginup(),
        '/StartPage': (BuildContext  context) => new StartPage(),
        '/sub': (BuildContext  context) => new Sub(title: 'الاقسام'),
        '/dash': (BuildContext  context) => new DashboardScreen(title: 'وهب'),
        '/visitor': (BuildContext  context) => new VisitorPage(),

        '/subAgr': (BuildContext  context) => new Sub(title: 'علوم زراعية'),
        '/subArts': (BuildContext  context) => new Sub(title: 'الأداب'),
        '/subEdu': (BuildContext  context) => new Sub(title: 'التربية'),
        '/subFcis': (BuildContext  context) => new Sub(title: 'الحاسب وتقنية المعلومات'),
        '/subMan': (BuildContext  context) => new Sub(title: 'ادارة أعمال'),
        '/subMid': (BuildContext  context) => new Sub(title: 'الطب'),
        '/subAsnan': (BuildContext  context) => new Sub(title: 'طب الأسنان'),
        '/subPhamr': (BuildContext  context) => new Sub(title: 'الصيدلة'),
        '/subBitary': (BuildContext  context) => new Sub(title: 'طب البيطري'),
        '/subLow': (BuildContext  context) => new Sub(title: 'الحقوق'),
        '/subEng': (BuildContext  context) => new Sub(title: 'الهندسة'),
        '/subSic': (BuildContext  context) => new Sub(title: 'العلوم'),


      },
      theme: new ThemeData(
        primaryColor: const Color(0xFFEEAD00),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFFFFAD32),
      ),
      //home: new DashboardScreen(title: 'وهب'),
      home: new LogoPage(),
    );
  }


}


