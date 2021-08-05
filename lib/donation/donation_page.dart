import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_main_page.dart';

class DonationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Donation",
      home: DonationMainPage(),
    );
  }
}