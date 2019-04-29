import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor:  Colors.amber,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.supervisor_account),
            tooltip: 'Air it',
            onPressed: null,

          ),
          IconButton(
            icon: Icon(Icons.donut_large),
            tooltip: 'Restitch it',
            onPressed: null,
          ),

        ],
      ),

      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.assignment_ind),
            title: new Text('shop') ),
        new BottomNavigationBarItem(icon: new Icon(Icons.shopping_cart),
            title: new Text('shop') ),
        new BottomNavigationBarItem(icon: new Icon(Icons.home),
            title: new Text('shop') ),
        new BottomNavigationBarItem(icon: new Icon(Icons.library_add),
            title: new Text('shop') ),
        new BottomNavigationBarItem(icon: new Icon(Icons.mail_outline),
            title: new Text('shop') ),
      ],

        type: BottomNavigationBarType.fixed,


      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
