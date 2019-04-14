import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  String arg;
  HomePage(this.arg);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Center(
        child: new Text(arg),
      ),
    );
  }
}
