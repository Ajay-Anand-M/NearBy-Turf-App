import 'package:flutter/material.dart';
import 'package:nearbyturfs/TurfHomeScreen.dart';
import 'package:nearbyturfs/main.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
