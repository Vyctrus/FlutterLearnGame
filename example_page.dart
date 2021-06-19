import 'package:flutter/material.dart';
import 'package:my_simple_app/welcome_page.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          ElevatedButton(
            child: Text('Open route 2'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelocmePage()),
              );
            },
          ),
        ],
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
