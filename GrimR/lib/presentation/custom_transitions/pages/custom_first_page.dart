import 'package:flutter/material.dart';
import 'package:grimr/presentation/custom_transitions/pages/custom_second_page.dart';
import 'package:provider/provider.dart';

class CustomFirst_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  ListenableProvider<Animation<double>>(
                    create: (context) => animation,
                    child: CustomSecond_Page(),
                  ),
              transitionDuration: const Duration(milliseconds: 700)));
        },
      ),
    ));
  }
}
