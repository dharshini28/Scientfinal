import 'package:flutter/material.dart';
import 'package:flutterappfour/main.dart';

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key key}) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'ELECTRICAL TOOLS'),
    Tab(text: 'MECHANICAL TOOLS'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('SCIEnT TOOLS', style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.amber,
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
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
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(100, (index) {
                return Center(
                    child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 2.0,
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      'Item $index',
                    ),
                  ),
                ));
              }),
            ),
          );
        }).toList(),
      ),
    );
  }
}
