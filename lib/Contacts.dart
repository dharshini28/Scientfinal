import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8b195),
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body : Padding(
        padding: const EdgeInsets.only(
          left:10,
          right: 0.0,
          top:200,
          bottom:0.0
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container (
                  child: Text('Student Team Head(Rahul): +91 8098002455'),),
                  SizedBox(
                height: 30,
              ),
              Container(
                  child: Text('Admin Incharge(Mr. Ganesh): +91 9944641883/9894127474')),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: Text('Email:scient.nitt@gmail.com,scient@nitt.edu')),
              SizedBox(
                height: 30,
              ),
            ],
          ),
      ),
      );

  }
}

