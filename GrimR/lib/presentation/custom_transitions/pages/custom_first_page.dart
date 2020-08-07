import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.dart';

class CustomFirst_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 250,
              color: Colors.transparent,
              child: const Center(
                child: Text(
                  'First Page before custom transition',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 250,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: FloatingActionButton(
                child: const Icon(Icons.add_circle),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.customSecond);
                },
                heroTag: 'customTrans',
              ),
            ),
            Container(
              height: 150,
              width: 250,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 30),
              // child: FloatingActionButton(
              //   child: const Icon(Icons.add_circle),
              //   onPressed: () {
              //     Navigator.of(context).pushNamed(Routes.customSecond);
              //   },
              //   heroTag: 'customTrans',
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
