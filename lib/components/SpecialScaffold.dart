import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SpecialScaffold extends StatelessWidget {
  final Widget body;

  const SpecialScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            centerTitle: false,
            leadingWidth: 100,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Your Feed's",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          body: body,
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(FeatherIcons.send)),
                Tab(icon: Icon(FeatherIcons.upload)),
                Tab(icon: Icon(Icons.account_balance_wallet_rounded)),
                Tab(icon: Icon(Icons.widgets)),
              ],
            ),
          )),
    );
  }
}
