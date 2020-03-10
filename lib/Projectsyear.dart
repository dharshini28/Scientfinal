import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Yearwiseprojectsdisplay.dart';

void main() => runApp(
    MaterialApp(title: 'Navigation Basics',
        home: years()));
class years extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROJECTS'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Card(
        child: SizedBox(
          width: 800,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              SizedBox(height: 60),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Yearwiseprojectsdisplay(),
                        ));
                  },
                  child: Container(child: Center(child: new Text('2016')),
                    width: 250,
                    height: 50,),
                ),
                color: Colors.cyanAccent,
                elevation: 5,
              ),
              SizedBox(height: 30),
              Card(

                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Yearwiseprojectsdisplay(),
                        ));
                  },
                  child: Container(child: Center(child: new Text('2017')),
                    width: 250,
                    height: 50,),
                ),
                color: Colors.cyanAccent,
                elevation: 5,

              ),
              SizedBox(height: 30),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Yearwiseprojectsdisplay(),
                        ));
                  },
                  child: Container(child: Center(child: new Text('2018')),
                    width: 250,
                    height: 50,),
                ),
                color: Colors.cyanAccent,
                elevation: 5,
              ),
              SizedBox(height: 30),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Yearwiseprojectsdisplay(),
                        ));
                  },
                  child: Container(child: Center(child: new Text('2019')),
                    width: 250,
                    height: 50,),
                ),
                color: Colors.cyanAccent,
                elevation: 5,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
