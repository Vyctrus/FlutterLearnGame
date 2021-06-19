import 'package:flutter/material.dart';
import 'package:my_simple_app/language_page.dart';
import 'language_pack.dart';
import 'dart:io'; //for exit(0)

class WelocmePage extends StatelessWidget {
  int language_index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.welcomePage[language_index]),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text(Strings.startGame[language_index]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          ),
          ElevatedButton(
            child: Text(Strings.settings[language_index]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          ),
          ElevatedButton(
            child: Text(Strings.exit[language_index]),
            onPressed: () => exit(0),
          ),
        ],
      )),
    );
  }
}
