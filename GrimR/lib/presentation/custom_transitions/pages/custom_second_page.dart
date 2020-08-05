import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomSecond_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.deepPurple[700],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurple[200],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ExtendedNavigator.of(context).pop();
        },
        label: const Text('Navigate Back'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
