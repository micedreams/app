import 'package:app/components/SpecialScaffold.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/Home';

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(context) {
    return const SpecialScaffold(
      body: SizedBox.shrink(),
    );
  }
}