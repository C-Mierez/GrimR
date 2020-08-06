import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSecond_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SlidingContainer(
              initialOffsetX: 1,
              intervalStart: 0,
              intervalEnd: 0.5,
              color: Theme.of(context).accentColor,
            ),
          ),
          Expanded(
            child: SlidingContainer(
              initialOffsetX: -1,
              intervalStart: 0.5,
              intervalEnd: 1,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: const Text('Navigate Back'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class SlidingContainer extends StatelessWidget {
  final double initialOffsetX;
  final double intervalStart;
  final double intervalEnd;
  final Color color;

  const SlidingContainer({
    Key key,
    @required this.initialOffsetX,
    @required this.intervalStart,
    @required this.intervalEnd,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! Important to have the listen: false so the widget doesnt rebuild itself
    final transitionAnimation =
        Provider.of<Animation<double>>(context, listen: false);

    return AnimatedBuilder(
      animation: transitionAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(initialOffsetX, 0),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              curve: Interval(intervalStart, intervalEnd,
                  curve: Curves.easeOutCubic),
              parent: transitionAnimation,
            ),
          ),
          child: child,
        );
      },
      child: Container(
        color: color,
      ),
    );
  }
}
