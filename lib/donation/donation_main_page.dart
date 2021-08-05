import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_common_widgets/event_card_button.dart';
import 'package:my_food/donation/donation_details.dart';

class DonationMainPage extends StatelessWidget {
  final Color themeColour = Colors.deepOrange[100];
  final Color fontColour = Colors.black87;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
        backgroundColor: themeColour,
        toolbarHeight: 80.0,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            "Donation",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0, color: fontColour),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    final double space = 16.0;
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: space),
              EventCardButton(
                eventTitle: "Support Families in Nigeria",
                image: "lib/image/donation.jpg",
                context: context,
                margin: EdgeInsets.all(8.0),
                page: DonationDetails(),
              ),
              Divider(height: space),
              EventCardButton(
                eventTitle: "Support Families in Nigeria",
                image: "lib/image/donation.jpg",
                context: context,
                margin: EdgeInsets.all(8.0),
                page: DonationDetails(),
              ),
              Divider(height: space),
              EventCardButton(
                eventTitle: "Support Families in Nigeria",
                image: "lib/image/donation.jpg",
                context: context,
                margin: EdgeInsets.all(8.0),
                page: DonationDetails(),
              ),
              Divider(height: space),
              EventCardButton(
                eventTitle: "Support Families in Nigeria",
                image: "lib/image/donation.jpg",
                context: context,
                margin: EdgeInsets.all(8.0),
                page: DonationDetails(),
              ),
              SizedBox(height: space),
            ],
          ),
        ),
      ],
    );
  }
}
