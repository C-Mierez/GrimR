import 'dart:math' as math;

import 'package:flutter/material.dart';

class RefactoredAnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RefactoredAnimationPageState();
}

class _RefactoredAnimationPageState extends State<RefactoredAnimationPage>
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
        leading: IconButton(
          icon: const Hero(tag: 'appBarIcon', child: Icon(Icons.arrow_back)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Refactored Animation Page'),
      ),
      body: RotatingTransition(
        angleAnimation: animation,
        child: ElegantLogoImage(),
      ),
    );
  }
}

class RotatingTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> angleAnimation;
  const RotatingTransition({Key key, this.child, this.angleAnimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: angleAnimation,
      builder: (context, child) {
        return Transform.rotate(
          angle: angleAnimation.value,
          child: child,
        );
      },
      child: child,
    );
  }
}

class ElegantLogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30),
      child: Image.asset('assets/drawing.png'),
    );
  }
}
