import 'dart:math' as math;

import 'package:flutter/material.dart';

class BasicAnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BasicAnimationPageState();
}

class _BasicAnimationPageState extends State<BasicAnimationPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    final curvedAnimation = CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceIn,
        reverseCurve: Curves.easeOut);

    //* You can also do Tween().chain(CurvedTween()) to add a another tween that handles the curves
    animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(curvedAnimation)
      ..addListener(
        () {
          setState(() {});
        },
      )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Animation Page'),
      ),
      backgroundColor: Colors.deepPurple[700],
      body: Transform.rotate(
        angle: animation.value,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: Image.asset('assets/drawing.png'),
        ),
      ),
    );
  }
}
