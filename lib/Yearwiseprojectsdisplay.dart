import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'PROJECTS',
      home: Yearwiseprojectsdisplay(),
    ));

class Yearwiseprojectsdisplay extends StatelessWidget {
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
    'imagestool/image1.jpg',
    'imagestool/image2.jpg',
    'imagestool/image3.jpg',
    'imagestool/image4.jpg',
    'imagestool/image5.jpg',
    'imagestool/image6.jpg',
    'imagestool/image7.jpg',
    'imagestool/image8.jpg',
    'imagestool/image9.jpg',
    'imagestool/image10.jpg'
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('PROJECTS'),
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
          itemCount: toolname.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: GestureDetector(
                  child: Container(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        FittedBox(
                          child: Image.asset(
                            "assets/images/imagestool/${image[index]}",
                            fit: BoxFit.fill,
                          ),
                          fit: BoxFit.fill,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(toolname[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 28)),
                              Text(description[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    String name = toolname[index];
                    String tooldescription = description[index];
                    String toolimage = image[index];
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Projectsyear(name, tooldescription, toolimage),
                        ));
                  },
                ),
              ),
            );
          },
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class Projectsyear extends StatefulWidget {
  String name;
  String tooldescription;
  String toolimage;
  Projectsyear(this.name, this.tooldescription, this.toolimage);
  @override
  State<StatefulWidget> createState() {
    return Projectsyearstate(this.name, this.tooldescription, this.toolimage);
  }
}

class Projectsyearstate extends State<Projectsyear> {
  String name;
  String tooldescription;
  String toolimage;
  Projectsyearstate(this.name, this.tooldescription, this.toolimage);
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
              Center(
                child: Image.asset(
                  "assets/images/imagestools/${toolimage}",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(child: Text(name)),
              SizedBox(
                height: 20,
              ),
              Center(child: Text(tooldescription)),
            ],
          ),
        ));
  }
}
