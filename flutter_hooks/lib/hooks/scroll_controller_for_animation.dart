import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
/* 
* This would work if scrollController didnt need to be disposed
ScrollController useScrollControllerForAnimation(
  AnimationController animationController,
) {
  ScrollController scrollController = ScrollController();
  scrollController.addListener(() {
    switch (scrollController.position.userScrollDirection) {
      // Scrolling up - forward the animation (value goes to 1)
      case ScrollDirection.forward:
        animationController.forward();
        break;
      // Scrolling down - reverse the animation (value goes to 0)
      case ScrollDirection.reverse:
        animationController.reverse();
        break;
      // Idle - keep FAB visibility unchanged
      case ScrollDirection.idle:
        break;
    }
  });
  return scrollController;
}
*/

ScrollController useScrollControllerForAnimation(
        AnimationController animationController) =>
    Hook.use(_ScrollControllerForAnimationHook(
        animationController: animationController));

class _ScrollControllerForAnimationHook extends Hook<ScrollController> {
  final AnimationController animationController;

  const _ScrollControllerForAnimationHook({@required this.animationController});

  @override
  _ScrollControllerForAnimationHookState createState() =>
      _ScrollControllerForAnimationHookState();
}

class _ScrollControllerForAnimationHookState
    extends HookState<ScrollController, _ScrollControllerForAnimationHook> {
  ScrollController _scrollController;
  @override
  void initHook() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        // Scrolling up - forward the animation (value goes to 1)
        case ScrollDirection.forward:
          hook.animationController.forward();
          break;
        // Scrolling down - reverse the animation (value goes to 0)
        case ScrollDirection.reverse:
          hook.animationController.reverse();
          break;
        // Idle - keep FAB visibility unchanged
        case ScrollDirection.idle:
          break;
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
  }

  @override
  ScrollController build(BuildContext context) {
    return _scrollController;
  }
}
