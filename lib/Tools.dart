import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() => runApp(MaterialApp(
    title: 'Tools', debugShowCheckedModeBanner: false, home: Tools()));

class Tools extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<Tools> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/photos"),
        headers: {
          "Accept": "application/json"
        }
    );

    this.setState(() {
      data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }
  final toolname = [
    'toolname1',
    'toolname2',
    'toolname3',
    'toolname4',
    'toolname5',
    'toolname6',
    'toolname7',
    'toolname8',
    'toolname9',
    'toolname10'
  ];

  final image = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    'image4.jpg',
    'image5.jpg',
    'image6.jpg',
    'image7.jpg',
    'image8.jpg',
    'image9.jpg',
    'image10.jpg'
  ];

  final description = [
    'description1',
    'description2',
    'description3',
    'description4',
    'description5',
    'description6',
    'description7',
    'description8',
    'description9',
    'description10'
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child:
                  Text('SCIEnT TOOLS', style: TextStyle(color: Colors.black))),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: <Widget>[
              Text('ELECTRICAL TOOLS'),
              Text('MECHANICAL TOOLS'),
              Text('HEAVY MACHINERY'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(data.length, (index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      print("Container clicked");

                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new NetworkImage(data[index]["url"]),
                          ),
                          ),
                      child: Center(
                        child: Text(
                          data[index]["title"],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(data.length, (index) {
                return Center(
                    child: InkWell(
                        onTap: () {
                          print("Container clicked");

                        },
                        child: new Card(
                            child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: new NetworkImage(data[index]["url"]),
                              ),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Center(
                            child: Text(
                              data[index]["title"],
                            ),
                          ),
                        ))));
              }),
            ),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(data.length, (index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      print("Container clicked");
                      String tool = toolname[index];
                      String toolimage = image[index];

                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new NetworkImage(data[index]["url"]),
                          ),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          data[index]['title'],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

