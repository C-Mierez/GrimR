import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grimr/presentation/core/routes/router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum PageId { Home, Search, Feed, Messages, Main }

class SplashPage extends StatefulWidget {
  final Map<PageId, GlobalKey<NavigatorState>> _navigatorKeys = {
    PageId.Home: GlobalKey<NavigatorState>(),
    PageId.Search: GlobalKey<NavigatorState>(),
    PageId.Feed: GlobalKey<NavigatorState>(),
    PageId.Messages: GlobalKey<NavigatorState>(),
    PageId.Main: GlobalKey<NavigatorState>(),
  };

  final Map<PageId, String> _initialRoutes = {
    PageId.Home: Routes.home,
    PageId.Search: Routes.home,
    PageId.Feed: Routes.sliverSettings,
    PageId.Messages: Routes.home,
    PageId.Main: Routes.splashScreen,
  };
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Container(
          color: colorScheme.background,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [
                  0.2,
                  0.6,
                ],
                colors: [
                  colorScheme.background,
                  colorScheme.primary.withOpacity(0.1),
                ]),
          ),
        ),
        SafeArea(
          child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.transparent,
            body: Navigator(
              key: widget._navigatorKeys[PageId.values[currentPageIndex]],
              onGenerateRoute: RouteGenerator.generateRoute,
              initialRoute:
                  widget._initialRoutes[PageId.values[currentPageIndex]],
              //child: const HomePage(),
            ),
            bottomNavigationBar: _bottomNavBar(
              onItemSelected: _navBarItemSelected,
            ),
          ),
        ),
      ],
    );
  }

  void _navBarItemSelected(int selectedItemIndex) {
    setState(() {
      currentPageIndex = selectedItemIndex;
    });
  }
}

class _bottomNavBar extends StatefulWidget {
  final Function(int) onItemSelected;
  const _bottomNavBar({
    Key key,
    @required this.onItemSelected,
  }) : super(key: key);

  @override
  __bottomNavBarState createState() => __bottomNavBarState();
}

class __bottomNavBarState extends State<_bottomNavBar> {
  int currentIndex = 0;
  final List<BottomNavigationBarItem> barItemList = [];

  @override
  void initState() {
    super.initState();
    final List<_NavItemInfo> itemInfoList = [
      _NavItemInfo(
          icon: MdiIcons.homePlusOutline,
          activeIcon: MdiIcons.homePlus,
          title: 'Test'),
      _NavItemInfo(
          icon: MdiIcons.searchWeb,
          activeIcon: MdiIcons.searchWeb,
          title: 'Test'),
      _NavItemInfo(
          icon: MdiIcons.notificationClearAll,
          activeIcon: MdiIcons.notificationClearAll,
          title: 'Test'),
      _NavItemInfo(
          icon: MdiIcons.messageOutline,
          activeIcon: MdiIcons.message,
          title: 'Test'),
      // _NavItemInfo(icon: Icons.border_style, title: 'Test'),
    ];
    for (_NavItemInfo item in itemInfoList) {
      barItemList.add(
        BottomNavigationBarItem(
          activeIcon: Icon(
            item.activeIcon,
            size: 32,
          ),
          title: Container(
            child: const Icon(
              MdiIcons.circle,
              size: 8,
            ),
          ),
          icon: Icon(item.icon),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: _bottomNavTapAction,
        elevation: 0,
        items: barItemList,
      ),
    );
  }

  void _bottomNavTapAction(int itemIndex) {
    setState(() {
      currentIndex = itemIndex;
    });
    widget.onItemSelected(currentIndex);
  }
}

class _NavItemInfo {
  final IconData icon;
  final IconData activeIcon;
  final String title;

  _NavItemInfo(
      {@required this.activeIcon, @required this.icon, @required this.title});
}
