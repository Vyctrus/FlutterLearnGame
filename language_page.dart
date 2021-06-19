import 'package:flutter/material.dart';
import 'language_pack.dart';

class LanguagePage extends StatefulWidget {
  //int language_index = 1;
  //final int languageIndex;
  final Color color;

  LanguagePage({
    this.color = Colors.white,
    //this.languageIndex = 1,
  });

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<LanguagePage> {
  int languageIndex = 1;

  void changePl() {
    setState(() {
      languageIndex = 1;
    });
  }

  void changeEn() {
    setState(() {
      languageIndex = 0;
    });
  }

  @override
  // Widget build(BuildContext context) {
  //   return Text('Twoja wartosc to: $languageIndex');
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.languagePage[languageIndex]),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text(Strings.langEn[languageIndex]),
            onPressed: () {
              changeEn();
            },
          ),
          ElevatedButton(
            child: Text(Strings.langPl[languageIndex]),
            onPressed: () {
              changePl();
            },
          ),
        ],
      )),
    );
  }
}
