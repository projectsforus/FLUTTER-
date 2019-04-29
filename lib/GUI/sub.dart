import 'package:flutter/material.dart';
import 'package:wahb/GUI/home.dart';
import 'package:wahb/GUI/sub.dart';
import 'package:wahb/ui/add.dart';
import 'package:wahb/ui/msg.dart';
import 'package:wahb/ui/profile.dart';
import 'package:wahb/ui/sale.dart';
import 'package:wahb/ui/SubjectPage.dart';


class Sub extends StatefulWidget {
  Sub({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FirstState createState() => _FirstState(title: title);
}


class _FirstState extends State<Sub> {
  _FirstState({Key key, this.title});
  final String title;
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white54,
      appBar: new AppBar(

        title: new Text(
          widget.title,
          style: new TextStyle(color: const Color(0xFFFFFFFF)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.supervisor_account),
            color: const Color(0xF0000000),

            tooltip: 'من نحن',
            onPressed: null,

          ),
          IconButton(
            icon: Icon(Icons.donut_large),
            color: const Color(0xF0000000),
            tooltip: ' ارشادات',
            onPressed: null,
          ),
        ],
      ),
      body: new PageView(
        children: [
          new SubjectPage(title: title,),
          new Sale('السلة'),
          new Profile('الصفحة الشخصية '),
          new Add('اضافة'),
          new Msg('الرسائل'),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),

      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: const Color(0xFFEEAD00),
        ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new IconButton(
                  icon: Icon( Icons.home,color: const Color(0xF0000000)),
                  color: const Color(0xF0000000),
                  tooltip: ' الرئسية',
                  onPressed: () {Navigator.of(context).pop();},
                ),
                title: new Text(
                  "الرئسية",
                  style: new TextStyle(
                    color: const Color(0xF0000000),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.shopping_cart,
                  color: const Color(0xF0000000),
                ),
                title: new Text(
                  "السله",
                  style: new TextStyle(
                    color: const Color(0xF0000000),
                  ),
                )),
            new BottomNavigationBarItem(

                icon: new Icon(
                  Icons.assignment_ind,
                  color: const Color(0xF0000000),
                ),
                title: new Text(
                  "الشخصي",
                  style: new TextStyle(
                    color: const Color(0xF0000000),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.library_add,
                  color: const Color(0xF0000000),
                ),
                title: new Text(
                  "اضافة",
                  style: new TextStyle(
                    color: const Color(0xF0000000),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.mail_outline,
                  color: const Color(0xF0000000),
                ),
                title: new Text(
                  "الرسائل",
                  style: new TextStyle(
                    color: const Color(0xF0000000),
                  ),
                ))
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
