import 'package:flutter/material.dart';

Widget customTrans_slides(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return ScaleTransition(
    scale: animation,
    alignment: Alignment.center,
    child: child,
  );
}

Widget customTrans_double(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      curve: const Interval(0, 0.5, curve: Curves.easeOutCubic),
      parent: animation,
    )),
    child: child,
  );
}
