import 'package:flutter/material.dart';
import 'package:my_simple_app/language_page.dart';
import 'language_pack.dart';
import 'dart:io'; //for exit(0)

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int languageIndex = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.welcomePage[languageIndex]),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text(Strings.startGame[languageIndex]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          ),
          ElevatedButton(
            child: Text(Strings.settings[languageIndex]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          ),
          ElevatedButton(
            child: Text(Strings.exit[languageIndex]),
            onPressed: () => exit(0),
          ),
        ],
      )),
    );
  }
}
