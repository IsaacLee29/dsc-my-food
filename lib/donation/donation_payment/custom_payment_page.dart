import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_common_widgets/donate_button.dart';
import 'package:my_food/donation/donation_payment/payment_successful_page.dart';

class CustomPaymentPage extends StatelessWidget {
  CustomPaymentPage(
      {@required this.title1,
      @required this.subtitle1,
      @required this.title2,
      @required this.subtitle2});

  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final Color themeColour = Colors.deepOrange[100];
  final Color fontColour = Colors.black87;
  final Color backgroundColour = Color(0xFFEEEEEE);
  final Color boxColour = Colors.white;

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildBar(this.title1, this.subtitle1),
        SizedBox(height: 10),
        _buildBar(this.title2, this.subtitle2),
        SizedBox(height: 200),
        Padding(
          padding: EdgeInsets.all(20),
          child: DonateButton(
            context: context,
            page: PaymentSuccessfulPage(),
          ),
        ),
      ],
    );
  }

  Widget _buildBar(String title, String subtitle) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(color: boxColour),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 250,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: 200,
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
