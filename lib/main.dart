import 'package:flutter/material.dart';

import 'package:pro/search_fun.dart';
import 'package:pro/tab_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anonymous_Greyhat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text("Anonymous animation"),
        centerTitle: true,
          actions: <Widget>[
           new IconButton(
               icon: new Icon(Icons.search), onPressed: () {
                 showSearch(context: context, delegate: DataSearch());
               }),
           new IconButton(
             icon: new Icon(Icons.more_vert), onPressed: () {}),
           ],
      ),
      bottomNavigationBar: FancyTabBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is demo animation of BOTTOM NAVIGATION BAR',
            ),
          ],
        ),
      ),
    );
  }
}
