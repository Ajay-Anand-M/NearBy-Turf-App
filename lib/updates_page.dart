import 'package:flutter/material.dart';

import 'TurfHomeScreen.dart';

class Updates extends StatefulWidget {
  const Updates({Key? key}) : super(key: key);

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: MyNavigationDrawer(),
    appBar: AppBar(
    title: const Text('Updates'),
    backgroundColor: Colors.green,
    ),
      body: Center(
        child:
          Text("Update informations"),
      ),

    );
  }
}

