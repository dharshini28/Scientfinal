import 'package:flutter/material.dart';
import 'package:flutterappfour/gridview.dart';
import 'package:flutterappfour/newlistview.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
var _scaffoldKeym = new GlobalKey<ScaffoldState>();

class listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          PopupMenuButton<WhyFarther>(
            onSelected: (WhyFarther result) {
              setState(() {
                var _selection = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.harder,
                child: Text('Contacts'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.smarter,
                child: Text('About us'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.selfStarter,
                child: Text('Registration'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.tradingCharter,
                child: Text('Updates'),
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Scient',
                textScaleFactor: 3,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage('assets/images/1.jpg'),
                  alignment: Alignment.centerLeft,
                ),
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
      body: ListWheelScrollView(
        //change it to a stateful widget, it should fetch the children from an api
        offAxisFraction: 0.25,
        itemExtent: 200,
        children: [
          Container(
              color: Colors.cyan, child: Center(child: Text('dharshini 1'))),
          Container(
            color: Colors.lime,
            child: Center(child: Text('dharshini 1')),
          ),
          Container(
            color: Colors.cyanAccent,
            child: Center(child: Text('dharshini 1')),
          ),
          Container(
            color: Colors.deepOrangeAccent,
            child: Center(child: Text('dharshini 1')),
          ),
          Container(
            color: Colors.brown,
            child: Center(child: Text('dharshini 1')),
          ),
          Container(
            color: Colors.cyan,
            child: Center(child: Image.asset('assets/images/1.jpeg')),
          ),
        ],
        useMagnifier: true,
        diameterRatio: 7,
      ),
    );
  }

  void setState(Null Function() param0) {}
}

/*leading: GestureDetector(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => MyApp()),
);
},
child: Icon(Icons.menu),
),*/
