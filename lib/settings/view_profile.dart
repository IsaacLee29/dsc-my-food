import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';

final Color defaultBackgroundColor = Colors.deepOrange[100];
final List<Icon> _icons = [
  Icon(Icons.person_rounded),
  Icon(FlutterIcons.gender_male_female_mco),
  Icon(Icons.email_rounded),
  Icon(Icons.contact_phone_rounded),
  Icon(FontAwesome.globe)
];
final Map<String, String> _userDetails = {
  "Name": "Peter",
  "Gender": "Male",
  "Email": "peter1234@gmail.com",
  "Contact": "0123456789",
  "Country": "Malaysia"
};

class ViewProfile extends StatefulWidget {
  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  final textInputController = TextEditingController();  // in case wanna provide editing options to details`

  @override
  void dispose() {
    textInputController.dispose();
    super.dispose();
  }

  Widget _buildContainer(int index) {
    final String option = _userDetails.keys.elementAt(index),
        detail = _userDetails[option];

    return Container(
        height: 100.0,
        width: 100.0,
        padding: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
            color: defaultBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
              leading: _icons[index],
              title: Text(option, style: TextStyle(fontSize: 20.0)),
              subtitle: Text(detail, style: TextStyle(fontSize: 18.0)),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: defaultBackgroundColor,
            middle: Text("View Profile"),
            trailing: Icon(Icons.person_outline)),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(height: 30.0),
                itemCount: _userDetails.length,
                itemBuilder: (context, index) => this._buildContainer(index))));
  }
}
