import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappfour/Contacts.dart';
import 'package:flutterappfour/ImageCarousel.dart';
import 'package:flutterappfour/Tools.dart';

import 'Projectsyear.dart';

void main() => runApp(MyApp());
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
var _scaffoldKey = new GlobalKey<ScaffoldState>();
List<String> clubs = [
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
      debugShowCheckedModeBanner: false,
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
  _MyHomePageState createState() => _MyHomePageState(

  );
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
      body: SingleChildScrollView(
        child: Container(
          child: new Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 30,
                    bottom: 0,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25,
                          child: Image(image: AssetImage('assets/images/scient-logo.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 0,
                          bottom: 0,
                          right: 0,
                        ),
                        child: Container(
                          child: Text('SCIENT',style: TextStyle(fontSize: 28),),
                        ),
                      )
                    ],

                  ),
                ),

            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
                bottom: 0,
                right: 20,
              ),
              child: Container(
                height: 200,
                child: Center(child: ImageCarousel()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
                bottom: 0,
                right: 20,
              ),
              child: Container(
                child: Center(child: Text('ABOUT US',style: TextStyle(fontSize: 28))),
              ),
            ),

            Padding(
                   padding: const EdgeInsets.only(
                     left: 20,
                     top: 10,
                     bottom: 20,
                     right: 20,
                   ),
                   child: Container(
                child: Center(child: Text('SCIEnT is a multi-disciplinary innovation centre, providing opportunities to students to delve into the ever expanding world of technology, and discover, hands on, the incredible scope for innovation that the world offers today. The lab allows students to explore and experiment with technology, without having to deal with the fear and cost of failure. At SCIEnT, students are offered a multitude of tools, machines, consumables and services, and a space in which to work, learn and grow.')),
               ),
                 ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: clubs.length,
                  itemBuilder: (context, index) {
                    return Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Card(
                            color: Colors.blue,
                            child: GestureDetector(
                              onTap: (){
                                String name = clubs[index];
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Club(name),
                                    ));
                              },

                              child: Container(
                                child: Center(
                                    child: Text(
                                  clubs[index].toString(),
                                  style: TextStyle(color: Colors.white, fontSize: 36.0),
                                )),
                              ),
                            ),
                          ),
                        );
                  }),
            ),
          ]),
        ),
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
                      Container(
                          width:100,
                          height:100,
                          child: Image(image: AssetImage('assets/images/image3.jpg'))),
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
                      MaterialPageRoute(builder: (context) => years()),
                    );
                  }
                },
              ),
              Divider(
                color: Theme.of(context).primaryColorDark,
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
  }}

  class Club extends StatefulWidget {
  String name;
  Club(this.name);
  @override
  State<StatefulWidget> createState() {
  return Clubstate(this.name);
  }}
  class Clubstate extends State<Club> {
  String name;
  Clubstate(this.name);
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('PROJECTS'),
  backgroundColor: Colors.amberAccent,
  ),
  body: Padding(
  padding: const EdgeInsets.all(80.0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
  Center(child: Text(name)),
  SizedBox(
  height: 20,
  ),
])));}}