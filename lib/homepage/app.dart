import 'package:flutter/material.dart';
import 'package:my_food/common_widgets/bottom_navigation_bar.dart';
import '../common_widgets/tab_navigator.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

enum TabItem { homePage, shareFood, map, donation, settings }

class AppState extends State<App> {
  var _currentTab = TabItem.homePage;
  final _navigatorKeys = {
    TabItem.homePage: GlobalKey<NavigatorState>(),
    TabItem.shareFood: GlobalKey<NavigatorState>(),
    TabItem.map: GlobalKey<NavigatorState>(),
    TabItem.donation: GlobalKey<NavigatorState>(),
    TabItem.settings: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await _navigatorKeys[_currentTab].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.homePage) {
            // select 'main' tab
            _selectTab(TabItem.homePage);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.homePage),
          _buildOffstageNavigator(TabItem.shareFood),
          _buildOffstageNavigator(TabItem.map),
          _buildOffstageNavigator(TabItem.donation),
          _buildOffstageNavigator(TabItem.settings),
        ]),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}


