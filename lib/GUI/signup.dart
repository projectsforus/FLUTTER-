import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wahb/Model/HelperBbUser.dart';
import 'package:wahb/Model/UserModel.dart';

class Siginup extends StatefulWidget {
  @override
  _SiginupState createState() => new _SiginupState();
}

class _SiginupState extends State<Siginup>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  final UserNameController = TextEditingController();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConPasswordController = TextEditingController();


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

    //  صورة اللوجو
    final logo = ScaleTransition (
      scale: animation,
      child: Image.asset(
        'img/logo.png',
      ),
    );


    // Initially password is obscure
    bool _obscureText = true;

    //String _password;

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
            title: Text('تنبيه ' ,textDirection: TextDirection.rtl,textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.red),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(Msg ,textDirection: TextDirection.rtl,),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(color: Colors.amber,
                child: Text('حسنا' ,textDirection: TextDirection.ltr,style: TextStyle(color: Colors.black,fontSize: 15.0),),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    void _SignUp() async {

      // تخزين قيم النصية
      String userName =UserNameController.text;
      String email =EmailController.text;
      String password = PasswordController.text;
      String ConPassword = ConPasswordController.text;

      var db = new DatabaseHelper(); // لاستخدام دول تخزين البيانات

      if(password == '' || userName == '' || ConPassword == '' || email == ''){ // للتاكيد من ادخال كل القيم
        _neverSatisfied('الرجاء إكمال البيانات');
      }else if(password != ConPassword){// لتاكيد تطابق الرقم السري
        _neverSatisfied('الرقم السري غير متطابقان اعد المحاوله ');  // طبع رساله

      }else if((await db.getUserByUserName(userName)) != null){ // لعدم تكرار تخزين اسم المستخدم
        _neverSatisfied('هذا الاسم مستخدم من قبل');  // طبع رساله

      }else{ // تخزين البيانات
        await db.saveUser(new User(userName , password , email));
        // للانتقال الي صفحة الرئسية
        Navigator.of(context).pushNamedAndRemoveUntil('/dash',(Route<dynamic> route)=>false);
      }

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


                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0.0),
                      //mainAxisSize: MainAxisSize.max,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        logo,


                        Card(
                          elevation: 2.0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 250.0,
                            height: 60.0,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 1.0, bottom: 1.0, left: 5.0, right: 5.0),
                                  child: TextField(
                                    controller: UserNameController,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 16.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,

                                      hintText: "اسم المستخدم",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 18.0),
                                      suffixIcon: GestureDetector(
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

                  //  ---------------------   البريد الالكتروني   --------------
                        Card(
                          elevation: 2.0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 250.0,
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
                                    controller: EmailController,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 16.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,

                                      hintText: "البريد الالكتروني",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 18.0),
                                      suffixIcon: GestureDetector(
                                        //onTap: _toggleLogin,
                                        child: new Icon(
                                          Icons.alternate_email,
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






                        //  ---------------------     الرقم المرور    --------------
                        Card(
                          elevation: 2.0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 250.0,
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
                                    controller: PasswordController,
                                    obscureText: _obscureText,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 16.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "الرقم المرور",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 18.0),
                                      suffixIcon: GestureDetector(
                                        onTap: _toggle,
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


                        //  ---------------------   تاكيد  الرقم السري    --------------

                        Card(
                          elevation: 2.0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 250.0,
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
                                    controller: ConPasswordController,
                                    obscureText: _obscureText,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 16.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "تأكيد الرقم المرور",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 18.0),
                                      suffixIcon: GestureDetector(
                                        onTap: _toggle,
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



                        //  --------------------------   تسجيل جديد  ---------------
                        Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child:button('تسجيل الدخول',_SignUp)
                        ),

                        SizedBox(
                          height: 15.0,
                          width: 50.0,
                        ),

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

