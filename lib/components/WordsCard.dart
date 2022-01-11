import 'package:app/components/SpecialCard.dart';
import 'package:flutter/material.dart';

class WordsCard extends StatelessWidget {
  const WordsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpecialCard(
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
                  const Text(" 47 likes ",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
              const Text(" 10 comments ", style: TextStyle(color: Colors.grey)),
              const Text(" 2 shared ", style: TextStyle(color: Colors.grey))
            ],
          ),
        ],
      ),
      name: 'Name',
      time: '4 min ago',
    );
  }
}
