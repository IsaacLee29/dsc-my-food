import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  final Color themeColour = Colors.deepOrange[100];
  final Color fontColour = Colors.black87;
  final Color boxColour = Colors.white;
  final Color backgroundColour = Color(0xFFEEEEEE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: themeColour,
        leading: CupertinoNavigationBarBackButton(
          color: fontColour,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        middle: Text(
          "Payment Confirmation",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: _buildContent(context),
      backgroundColor: backgroundColour,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: 200,
        width: 300,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: boxColour,
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
                  "Payment successful",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text("Thank you for your support!",
                    style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 60),
                Container(
                  child: InkWell(
                    child: Text(
                      "OK",
                      style: TextStyle(
                          color: themeColour, fontWeight: FontWeight.bold),
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
