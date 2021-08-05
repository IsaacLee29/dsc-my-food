import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  final Color themeColour = Colors.deepOrange[100];
  final Color fontColour = Colors.black87;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildContent(context));
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: 160,
        width: 300,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 4,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Are you sure to log out?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 60),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        "NO",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    SizedBox(width: 180),
                    InkWell(
                      child: Text(
                        "YES",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: themeColour,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                     onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
