import 'package:flutter/material.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_second_page.dart';

class CustomFirst_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CustomSecond_Page(),
          ));
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
