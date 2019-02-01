import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyHome(),
    debugShowCheckedModeBanner: false,
  )
  );
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> {
  // Generate dialog
  AlertDialog dialog = new AlertDialog(
      content: new Text(
        "Alert Dialog has been pressed",
        style: new TextStyle(fontSize: 23.0),
        maxLines: 1,
      ));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Using Alert Dialog"),
        ),
        body: new Container(
          child: new Center(
            child: new RaisedButton(
                child: new Text("Press to know more.."),
                // On press of the button
                onPressed: () {
                  // Show dialog
                  showDialog(context: context, builder: (BuildContext context) => dialog);
                }),
          ),
        ));
  }
}