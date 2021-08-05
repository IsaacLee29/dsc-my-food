import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_main_page.dart';
import 'package:my_food/food/share_food.dart';
import 'package:my_food/map/main_map_screen.dart';
import '../homepage/app.dart';
import '../homepage/home_page.dart';
import '../settings/settings_page.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.detail](context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => ListOfPages(
        tabItem: this.tabItem,
    )
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}

class ListOfPages extends StatelessWidget{
  ListOfPages({this.tabItem});

  final TabItem tabItem;

  Widget switchPages (TabItem item) {
    var retVal;
    switch(item){
      case TabItem.homePage:
        retVal = GoogleDeveloperHomePage();
        break;
      case TabItem.shareFood:
        retVal = ShareFood();
        break;
      case TabItem.map:
        retVal = MapMainScreen();
        break;
      case TabItem.donation:
        retVal = DonationMainPage();
        break;
      case TabItem.settings:
        retVal = SettingsPage();
        break;
    break;}
    return retVal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchPages(this.tabItem),
    );
  }
}

