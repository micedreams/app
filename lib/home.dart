import 'package:app/components/PictureCard.dart';
import 'package:app/components/SpecialScaffold.dart';
import 'package:app/components/WordsCard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/Home';

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(context) {
    return SpecialScaffold(
      body: ListView(
        children: const [
          WordsCard(),
          PictureCard(),
        ],
      ),
    );
  }
}
