import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class FeedStrip extends StatelessWidget {
  const FeedStrip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "Gallery",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontFamily: "Roboto",
            letterSpacing: 0.005,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: [
            const Icon(
              FeatherIcons.chevronLeft,
              color: Colors.black,
              size: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 32, right: 32),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "TIMELINE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: "Roboto",
                    letterSpacing: 0.005,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Icon(
              FeatherIcons.chevronRight,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
        const Text(
          "About",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontFamily: "Roboto",
            letterSpacing: 0.005,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
