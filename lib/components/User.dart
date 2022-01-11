import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class User extends StatelessWidget {
  const User({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 150 / 2.0),
          child: Container(
              decoration: const BoxDecoration(color: Color(0xff283593)),
              height: 200.0),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: CircleAvatar(
            backgroundColor: Color(0xff083393),
            radius: 50,
            child: Text("A",
                style: TextStyle(
                  fontSize: 20.00,
                )),
          ),
        ),
        const Positioned(
          left: 120.0,
          top: 200.0,
          child: Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text("@nobody", style: TextStyle(fontSize: 16.00)),
          ),
        ),
        const Positioned(
          left: 120.0,
          top: 170.0,
          child: Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text("Name",
                style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold)),
          ),
        ),
        Positioned(
          left: 120.0,
          top: 200.0,
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 25),
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 4, left: 32, right: 32),
                  decoration: BoxDecoration(
                    color: const Color(0xff283593),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    "Message",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Roboto",
                      letterSpacing: 0.005,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    border: Border.all(color: const Color(0xFF828282))),
                child: const Icon(
                  FeatherIcons.userCheck,
                  color: Color(0xff283593),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
