import 'package:flutter/material.dart';
import 'package:flutterappfour/main.dart';

class newlistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Colors.amber,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Icon(Icons.menu),
        ),
      ),
      body: ListWheelScrollView(
        physics: FixedExtentScrollPhysics(),
        itemExtent: 200,
        diameterRatio: 3,
        children: [
          new InkWell(
            onTap: () {
              print("Container clicked");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ));
            },
            child: Container(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Image.asset(
                    "assets/images/projectimagescient2.png",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Project name",
                            style:
                                TextStyle(color: Colors.white, fontSize: 28)),
                        Text("Project description: done by, other details",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Image.asset(
                  "assets/images/projectimagescient2.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Project name",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      Text("Project description: done by, other details",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Image.asset(
                  "assets/images/projectimagescient2.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Project name",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      Text("Project description: done by, other details",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Image.asset(
                  "assets/images/projectimagescient2.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Project name",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      Text("Project description: done by, other details",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Image.asset(
                  "assets/images/projectimagescient2.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Project name",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      Text("Project description: done by, other details",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                Image.asset(
                  "assets/images/projectimagescient2.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Project name",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      Text("Project description: done by, other details",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
