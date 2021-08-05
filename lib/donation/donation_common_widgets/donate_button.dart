import 'package:flutter/material.dart';
import 'package:my_food/donation/donation_common_widgets/custom_raised_button.dart';

class DonateButton extends CustomRaisedButton {
  DonateButton({
    @required final BuildContext context,
    @required final Widget page,
  }) : super(
          color: Color(0xFFFFCCBC),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Donate",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          height: 50.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
        );
}