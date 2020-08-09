import 'package:flutter/material.dart';

//! This is just a test page. Barely documented code ahead

class SliverTestPage extends StatelessWidget {
  const SliverTestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              // pinned: true,
              floating: true,
              expandedHeight: 80,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('Sliver Settings'),
              ),
            ),
            SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red[700],
                  ),
                  Container(
                    color: Colors.red[400],
                  ),
                ],
              ),
              itemExtent: 50,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    height: 40,
                    color: Colors.amber[100 + (100 * (index % 8))],
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                          text: 'Amber color ',
                          children: [
                            TextSpan(
                              text: '$index.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber[100 + (100 * (index % 8))],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: 16,
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 + (100 * (index % 9))],
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Teal color   ',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: '$index.',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 57,
              ),
              // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //   //? This value is the exact size you want each children to have
              //   maxCrossAxisExtent: 150,
              //   childAspectRatio: 2,
              //   crossAxisSpacing: 10,
              //   mainAxisSpacing: 10,
              // ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //? Amount of children per row
                crossAxisCount: 3,
                //? Spacings
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                //? Ration of the child. 1 = 1:1 = Square
                childAspectRatio: 2.0,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepPurpleAccent,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  'Grid Header',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 3,
              children: <Widget>[
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.blue),
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.blue),
              ],
            ),
            SliverGrid.extent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
              children: <Widget>[
                Container(color: Colors.pink),
                Container(color: Colors.indigo),
                Container(color: Colors.orange),
                Container(color: Colors.pink),
                Container(color: Colors.indigo),
                Container(color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
