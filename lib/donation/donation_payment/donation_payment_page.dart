import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_payment/card_payment_page.dart';
import 'package:my_food/donation/donation_payment/google_pay_page.dart';
import 'package:my_food/donation/donation_payment/online_banking_page.dart';

class DonationPaymentPage extends StatelessWidget {
  final Color themeColour = Colors.deepOrange[100];
  final Color fontColour = Colors.black87;
  final Color boxColour = Colors.white;
  final Color backgroundColour = Color(0xFFEEEEEE);

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
          "Donate",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: _buildContent(context),
      backgroundColor: backgroundColour,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildBar("Support Families in Nigeria", ""),
        SizedBox(height: 10),
        _buildBar("Number of Meals", "7"),
        SizedBox(height: 10),
        _buildBar("Currency", "MYR"),
        SizedBox(height: 10),
        _buildBar("Payment Method", ""),
        _buildSubBar("Credit/Debit Card", context, CardPaymentPage()),
        SizedBox(height: 5),
        _buildSubBar("Online Banking", context, OnlineBankingPage()),
        SizedBox(height: 5),
        _buildSubBar("Google Pay", context, GooglePayPage()),
      ],
    );
  }

  Widget _buildBar(String barTitle, String barStr) {
    final double fontSize = 16.0;
    return SizedBox(
      height: 60,
      child: DecoratedBox(
        decoration: BoxDecoration(color: boxColour),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 250,
              child: Text(
                barTitle,
                style: TextStyle(fontSize: fontSize),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            SizedBox(
              width: 50,
              child: Text(
                barStr,
                style: TextStyle(fontSize: fontSize),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubBar(String barTitle, BuildContext context, Widget page) {
    final TextStyle subFontStyle =
        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300);
    return SizedBox(
      height: 60,
      child: DecoratedBox(
        decoration: BoxDecoration(color: boxColour),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 250,
              child: Text(
                barTitle,
                style: subFontStyle,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 80,
            ),
            InkWell(
              child: Icon(CupertinoIcons.chevron_forward),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page)),
            )
            // Icon(CupertinoIcons.chevron_forward)
          ],
        ),
      ),
    );
  }
}
