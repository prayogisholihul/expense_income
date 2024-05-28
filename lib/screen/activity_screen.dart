import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Activity',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: Center(
        child: Text("ACTIVITY SCREEN"),
      ),
    );
  }
}
