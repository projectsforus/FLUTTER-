import 'package:flutter/material.dart';

class SubjectPage extends StatefulWidget {
  final String title;
  SubjectPage({Key key, this.title}) : super(key: key);


  @override
  SubjectPageState createState() => new SubjectPageState(title: title);
}

class SubjectPageState extends State<SubjectPage> {
  SubjectPageState({Key key, this.title});
  final String title;

  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white54,
        body:_buildRow()
    );
  }


  Widget _buildRow() {
    if (title == 'علوم زراعية') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/agr/foods.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/agr/science.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'الأداب') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/arabic.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/english.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/gegraphe.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/history.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/islamec tich.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/islamic.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/arts/torisem.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'التربية') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/edu/arts.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/edu/kg.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/edu/learnningTech.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/edu/sport.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/edu/public.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'الحاسب وتقنية المعلومات') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/fcis/it.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/fcis/programming.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'ادارة أعمال') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/mangement/finnanc.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/mangement/hR.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/mangement/math.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'الطب') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/mid/pubMid.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'الصيدلة') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'طب الأسنان') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'طب البيطري') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'الحقوق') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'الهندسة') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/eng/bio.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/eng/chemistry.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/eng/citys.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      //icon: new Image.asset('img/college/eng/elect.png'),
                      icon: new Image.asset('img/college/eng/electric.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/eng/micanics.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else if (title == 'العلوم') {
      return new CustomScrollView(
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
                    child: IconButton(
                      icon: new Image.asset('img/college/sic/bio.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/sic/chan.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/sic/math.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),
                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/sic/phy.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

                Card(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black38,
                    child: IconButton(
                      icon: new Image.asset('img/college/donate.png'),
                      //onPressed: () {Navigator.of(context).pushNamed('/sub');},
                    )
                ),

              ],
            ),
          ),
        ],
      );
    }else
      return new Text(title);
  }
}

