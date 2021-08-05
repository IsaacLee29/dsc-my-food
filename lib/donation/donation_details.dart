import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_common_widgets/donate_button.dart';
import 'package:my_food/donation/donation_common_widgets/event_card_button.dart';
import 'package:my_food/donation/donation_payment/donation_payment_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DonationDetails extends StatelessWidget {
  final Color themeColour = Colors.deepOrange[100];
  final Color fontColour = Colors.black87;
  final Color progressBarColour = Color(0xFF9CADA4);
  
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
            "Details",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: _buildContent(context));
  }

  Widget _buildContent(BuildContext context) {
    return ListView(
      children: <Widget>[_buildTopSection(), _buildMiddleSection(context)],
    );
  }

  Widget _buildTopSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: themeColour,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          child: SizedBox(
              height: 300.0,
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                child: Image.asset("lib/image/donation.jpg"),
              )),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildMiddleSection(BuildContext context) {
    final double bigSpace = 30.0;
    final double smallSpace = 10.0;
    final List<String> images = [
      "lib/image/yayasan.png",
      "lib/image/yayasan.png",
      "lib/image/yayasan.png",
      "lib/image/yayasan.png"
    ];

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Support Families in Nigeria",
            style: TextStyle(color: fontColour, decoration: TextDecoration.none, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: bigSpace),
          Text(
            "Overview",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: smallSpace),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Ultrices neque ornare aenean euismod elementum.",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
          ),
          Divider(height: bigSpace),
          Text(
            "Target",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: smallSpace),
          Text(
            "  793,077 of 980,707 meals",
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 6.0),
          LinearPercentIndicator(
            width: 370.0,
            lineHeight: 12.0,
            percent: 0.8,
            progressColor: progressBarColour,
          ),
          SizedBox(height: 6.0),
          Text(
            "   49,630 myFood donaters",
            style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w300),
          ),
          Divider(height: bigSpace),
          Text(
            "Food bank involved",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: smallSpace),
          CarouselSlider.builder(
            itemCount: 4,
            options: CarouselOptions(
              height: 214,
              aspectRatio: 2,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
            ),
            itemBuilder: (context, index, realIdx) {
              return Container(
                  child: EventCardButton(
                eventTitle: "Yayasan Food Bank",
                image: images[index],
                context: context,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                page: DonationPaymentPage(),
              ));
            },
          ),
          Divider(height: bigSpace),
          SizedBox(height: bigSpace),
          DonateButton(context: context, page: DonationPaymentPage()),
        ],
      ),
    );
  }
}
