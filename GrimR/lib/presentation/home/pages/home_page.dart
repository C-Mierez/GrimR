import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: const _homeAppBar(),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          _GradientCard(colorScheme: colorScheme),
          IgnorePointer(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 45),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/hello.png'))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GradientCard extends StatelessWidget {
  const _GradientCard({
    Key key,
    @required this.colorScheme,
  }) : super(key: key);

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 30),
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 100),
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: colorScheme.primary.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 10,
        //     offset: const Offset(3, 3),
        //   )
        // ],
        gradient: LinearGradient(
          colors: [colorScheme.primary, colorScheme.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(60),
          bottom: Radius.circular(60),
        ),
      ),
      // child: Theme(
      //   data: Theme.of(context).copyWith(
      //     floatingActionButtonTheme: FloatingActionButtonThemeData(),
      //   ),
      //   child: _CardWrapChild(),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'Welcome ',
                  style: TextStyle(
                      color: colorScheme.background,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                  children: [
                    const TextSpan(
                      text: 'Charles',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
              flex: 7,
              child: Container(
                  alignment: Alignment.centerRight,
                  child: const _CardWrapChild())),
        ],
      ),
    );
  }
}

class _homeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _homeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          // color: Colors.red,
          ),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            MdiIcons.faceOutline,
            size: 34,
          ),
          IconButton(
            icon: const Icon(
              MdiIcons.progressWrench,
              size: 34,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.sliverSettings);
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class _CardWrapChild extends StatelessWidget {
  const _CardWrapChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 15,
      children: [
        FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.sliverSettings);
          },
          heroTag: 'sliverButton',
          child: const Icon(MdiIcons.wrench),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.refactoredAnimation);
          },
          heroTag: null,
          child: const Icon(MdiIcons.animation),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.sliverTest);
          },
          heroTag: null,
          child: const Icon(MdiIcons.signalDistanceVariant),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.customFirst);
          },
          heroTag: 'customTrans',
          child: const Icon(Icons.art_track),
        )
      ],
    );
  }
}
