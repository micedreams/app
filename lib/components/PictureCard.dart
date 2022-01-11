import 'package:app/components/SpecialCard.dart';
import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  const PictureCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpecialCard(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/picture.png',
            height: 150.0,
            fit: BoxFit.cover,
          ),
        ),
        name: 'Name',
        time: '4 min ago',
        shared: true);
  }
}
