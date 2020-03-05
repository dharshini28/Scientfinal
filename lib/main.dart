import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappfour/Contacts.dart';
import 'package:flutterappfour/ImageCarousel.dart';
import 'package:flutterappfour/Projectsyear.dart';
import 'package:flutterappfour/Tools.dart';

void main() => runApp(MyApp());
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
var _scaffoldKey = new GlobalKey<ScaffoldState>();
List<String> numbers = [
  'RMI',
  'Spider',
  'Delta',
  'DC',
  'Hive',
  'ThreeD',
  'SCient'
];

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
      body: Container(
        child: new Column(children: <Widget>[
          Container(
            height: 200,
            child: Center(child: ImageCarousel()),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Card(
                      color: Colors.blue,
                      child: Container(
                        child: Center(
                            child: Text(
                          numbers[index].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 36.0),
                        )),
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:
              Colors.amber, //This will change the drawer background to blue.
        ),
        child: Drawer(
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
                trailing: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    width: 48,
                    height: 48,
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    alignment: Alignment.center,
                  ),
                ),
                title: Text('Projects'),
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Projectsyear()),
                    );
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                trailing: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    width: 48,
                    height: 48,
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    alignment: Alignment.center,
                  ),
                ),
                title: Text('Contact'),
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contacts()),
                    );
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.pan_tool),
                trailing: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    width: 48,
                    height: 48,
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    alignment: Alignment.center,
                  ),
                ),
                title: Text('Tools'),
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tools()),
                    );
                  }
                },
              ),
            ],
          ),
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
