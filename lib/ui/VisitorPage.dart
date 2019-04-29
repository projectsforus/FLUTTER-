import 'package:flutter/material.dart';

class VisitorPage extends StatefulWidget {

  final String title = 'وهب';

  @override
  _VisitorPageState createState() => new _VisitorPageState();
}

class _VisitorPageState extends State<VisitorPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 0.0,
              crossAxisCount: 2,
              children: <Widget>[

                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/eng/col_eng.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subEng');},
                    )),

                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/fcis/col_fcis.png'),
                      //iconSize: 10.0,
                     // onPressed: () {Navigator.of(context).pushNamed('/subFcis');},
                    )),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/mangement/col_bisMangemint.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subMan');},
                    )),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/mid/mid.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subMid');},
                    )),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/phama.png'),
                      //iconSize: 10.0,
                     // onPressed: () {Navigator.of(context).pushNamed('/subPhamr');},
                    )),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      icon: new Image.asset('img/college/col_asnan.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subAsnan');},
                    )),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      icon: new Image.asset('img/college/col_betary.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subBitary');},
                    )),

                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      icon: new Image.asset('img/college/agr/Col_Agr.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subAgr');},
                    )),

                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/arts/col_media.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subArts');},
                    )),

                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/edu/col_eduocation.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subEdu');},
                    )),


                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/col_low.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subLow');},
                    )),


                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/UniversityRquiremint.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subAgr');},
                    )),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child:IconButton(
                      //icon: new Image.asset('img/college/uni_require.png'),
                      icon: new Image.asset('img/college/master.png'),
                      //iconSize: 10.0,
                      //onPressed: () {Navigator.of(context).pushNamed('/subAgr');},
                    )),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
