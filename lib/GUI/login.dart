
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wahb/Model/HelperBbUser.dart';
import 'package:wahb/Model/UserModel.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 2000),
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

  // Initially password is obscure
  bool _obscureText = true;


  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // ------------------  رسالة تحذيرية ---------------------
  Future<void> _neverSatisfied( String Msg) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('تنبيه ',textDirection: TextDirection.rtl,textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 25.0),),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(Msg,textDirection: TextDirection.rtl,),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.amber,
              child: Text('حسنا',textDirection: TextDirection.ltr,style: TextStyle(color: Colors.black,fontSize: 15.0),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  // --------- عمل ظرار تسجيل الدخول -----------------

  void _login() async {
    // تخزين قيم النصية
    String userName =UserNameController.text;
    String password = PasswordController.text;

    var db = new DatabaseHelper(); // لاستخدام دول تخزين البيانات

    if(password == '' || userName == ''){ // للتاكيد من ادخال كل القيم
      _neverSatisfied('من فضلك اكمل البيانات بشكل صحيح');

    }else if((await db.getUserByUserName(userName)) == null){ // لفحص اسم المستخدم
      _neverSatisfied('من فضلك اسم المستخدم خطا من فضلك ادخل اسم اخر ');  // طبع رساله

    }else if((await db.getUserByUserName(userName)).password == password){ // لفحص الرقم السري
      // للانتقال الي صفحة الرئسية
      Navigator.of(context).pushNamedAndRemoveUntil('/dash',(Route<dynamic> route)=>false);
    }else{
      _neverSatisfied('من فضلك الرقم السري خطا من فضلك ادخل اعد المحاولة ');  // طبع رساله
    }

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

    // صورة اللوجو
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
            Opacity(
              opacity: 0.30,
              child: Container(
                color: Colors.white54,
              ),
            ),
            SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(left: 80.0, right: 80.0),

                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0.0),
                      //mainAxisSize: MainAxisSize.max,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        logo,
                        SizedBox(
                          height: 30.0,
                          width: 50.0,
                        ),
                    Opacity(
                      opacity: 0.70,
                      child:Card(

                          elevation: 2.0,
                          //color: Colors.white,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 300.0,
                            height: 60.0,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 1.0, bottom: 1.0, left: 5.0, right: 5.0),
                                  child: TextField(
                                    controller: UserNameController,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 20.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "اسم المستخدم",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 14.0),
                                      suffixIcon: GestureDetector(
                                        //onTap: _toggleLogin,
                                        child: new Icon(
                                          Icons.assignment_ind,
                                          color: Colors.amber,
                                          size: 40.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 250.0,
                                  height: 1.0,
                                  color: Colors.grey[50],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ),

                        //----------------------    الرقم السري    -----------------------
                        Opacity(
                          opacity: 0.70,
                          child: Card(
                          elevation: 2.0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 300.0,
                            height: 60.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  color: Colors.grey[400],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 1.0, bottom: 1.0, left: 5.0, right: 5.0),
                                  child: TextField(
                                    // focusNode: myFocusNodePasswordLogin,
                                    controller: PasswordController,

                                    obscureText: _obscureText,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 20.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,

                                      hintText: "الرقم السري",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 15.0),
                                      suffixIcon: GestureDetector(
                                        //onTap: _toggleLogin,
                                        child: new Icon(
                                          Icons.enhanced_encryption,
                                          color: Colors.amber,
                                          size: 40.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ),

                        //  --------------------------   تسجيل الدخول  ---------------
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child:button('تسجيل الدخول', _login)),

                        //   ------------ ليس لديك حساب ------------
                        Padding(
                          padding: EdgeInsets.only(top: 0.0),
                          child: FlatButton(
                              onPressed: () { Navigator.of(context).pushNamed('/Signup');},
                              child: Text(
                                "ليس لديك حساب ؟ سجل الان ",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: "WorkSansMedium"),
                              )),
                        ),


                        SizedBox(
                          height: 15.0,
                          width: 50.0,
                        ),

                      ],
                    ))),
            SizedBox(
              height: 15.0,
              width: 50.0,
            ),
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
