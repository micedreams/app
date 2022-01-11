import 'package:app/components/SpecialCard.dart';
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
    return SpecialScaffold(
      body: ListView(
        children: [
          SpecialCard(
            body: Column(
              children: [
                const Text(
                    "we are facing a serious dilemma with Facebook taking away a good chunk of traffic to news and content sites and ad blockers eating into whats left  of it while slashing ad revenues",
                    style: TextStyle(fontSize: 20.00)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 8.0),
                          width: 80.00,
                          child: Stack(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xff283593),
                                radius: 16,
                                child: Text("A",
                                    style: TextStyle(
                                      fontSize: 20.00,
                                    )),
                              ),
                              Positioned(
                                left: 20.0,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xfff63483),
                                  radius: 16,
                                  child: Text("A",
                                      style: TextStyle(
                                        fontSize: 20.00,
                                      )),
                                ),
                              ),
                              Positioned(
                                left: 40.0,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff286593),
                                  radius: 16,
                                  child: Text("A",
                                      style: TextStyle(
                                        fontSize: 20.00,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(" 47 likes ",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text(" 10 comments ", style: TextStyle(color: Colors.grey)),
                    Text(" 2 shared ", style: TextStyle(color: Colors.grey))
                  ],
                ),
              ],
            ),
            name: 'Name',
            time: '4 min ago',
          ),
          SpecialCard(
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
              shared: true),
        ],
      ),
    );
  }
}
