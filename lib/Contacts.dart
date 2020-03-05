import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: Center(
        child: Text('Student Team Head(Rahul): +91 8098002455'
            'Admin Incharge(Mr. Ganesh): +91 9944641883/9894127474'
            'Email:scient.nitt@gmail.com,scient@nitt.edu'),
      ),
    );
  }
}
