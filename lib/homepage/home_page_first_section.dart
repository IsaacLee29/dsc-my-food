import 'package:flutter/material.dart';
import 'package:my_food/constants/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// Represents the first [Container] of the [HomePage].
class HomePageFirstSection extends StatelessWidget {
  final String _myDonations = "My Donations";
  final String _donated = "Donated: ";
  final String _target = "Target: ";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("Tapped"),
      child: Container(
        height: 190.0,
        color: Constants.homePageDefaultBackgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: 10.0,
              ),
              alignment: Alignment.centerLeft,
              // The text is 23 pixels in height
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.people_alt_outlined,
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.only(
                      right: 10.0,
                    ),
                  ),
                  Text(
                    this._myDonations,
                    style: Constants.homePageDefaultTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              decoration: Constants.homePageDefaultCircularBoxDecoration,
              height: 145.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 80.0,
                      width: 80.0,
                      child: CircularPercentIndicator(
                        radius: 80.0,
                        lineWidth: 8.0,
                        percent: 0.6,
                        center: Text(
                          "60%",
                          style: Constants.homePageSecondaryTextStyle,
                        ),
                        progressColor: Constants.homePageDefaultBackgroundColor,
                      ),
                    ),
                  ),
                  // Idea
                  // Donated:  300
                  // Target:   500
                  Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _donated,
                            style: Constants.homePageSecondaryTextStyle,
                          ),
                          Text(
                            _target,
                            style: Constants.homePageSecondaryTextStyle,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "300",
                            style: Constants.homePageSecondaryTextStyle,
                          ),
                          Text(
                            "500",
                            style: Constants.homePageSecondaryTextStyle,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
