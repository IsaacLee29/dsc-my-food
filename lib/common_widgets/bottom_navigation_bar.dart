import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../homepage/app.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({@required this.currentTab, @required this.onSelectTab});
  final Color color = Colors.teal[700];
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[100],
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.indigo),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: this.color, size: 25.0),
      unselectedIconTheme: IconThemeData(color: this.color, size: 25.0),
      // currentIndex: this.index,
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),

      items: [
        BottomNavigationBarItem(
            icon: new Icon(FontAwesome.home, size: 30.0,),
            label: "Home"),
        BottomNavigationBarItem(
            icon: new Icon(FontAwesome.cutlery,),
            label: "Food"),
        BottomNavigationBarItem(
            icon: new Icon(FontAwesome5.map, ),
            label: "Map"),
        BottomNavigationBarItem(
            icon: new Icon(FlutterIcons.charity_mco, size: 30.0,),
            label: "Donate"),
        BottomNavigationBarItem(
            icon: new Icon(Icons.settings, size: 30.0,),
            label: "Settings")
      ],

    );
  }
}
