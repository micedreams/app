import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SpecialCard extends StatelessWidget {
  final Widget body;

  final String time;

  final String name;
  final bool shared;

  const SpecialCard({
    Key? key,
    required this.body,
    required this.time,
    required this.name,
    this.shared = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white24,
      ),
      padding: const EdgeInsets.only(left: 8, right: 8),
      margin: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xff283593),
                    radius: 16,
                    child: Text("A",
                        style: TextStyle(
                          fontSize: 20.00,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text(name),
                            shared
                                ? const Text(" Shared ",
                                    style: TextStyle(color: Colors.grey))
                                : const SizedBox.shrink(),
                            shared
                                ? const Text("Event")
                                : const SizedBox.shrink()
                          ],
                        ),
                        Text(time,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
              const Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: body,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xffede7f6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        FeatherIcons.thumbsUp,
                        color: Color(0xff283593),
                        size: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child:
                        Text("124", style: TextStyle(color: Color(0xff283593))),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 46,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        FeatherIcons.messageCircle,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("9"),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        FeatherIcons.upload,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("9"),
                  )
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("9"),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
