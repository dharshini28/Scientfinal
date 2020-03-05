import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappfour/ImageCarousel.dart';
import 'package:flutterappfour/gridview.dart';
import 'package:flutterappfour/listview.dart';
import 'package:flutterappfour/newlistview.dart';

void main() => runApp(MyApp());
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
var _scaffoldKey = new GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.amber,
          leading: new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState.openDrawer())),
      body: Center(
        child: Container(
          height: 200,
          child: Center(child: ImageCarousel()),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                height: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image(image: AssetImage('assets/images/1.jpg')),
                    Text("Scient",
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Projects'),
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => listview()),
                  );
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contacts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.headset),
              title: Text('Projects'),
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => newlistview()),
                  );
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.pan_tool),
              title: Text('Tools',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyTabbedPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (MyApp())),
              );
            }
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
