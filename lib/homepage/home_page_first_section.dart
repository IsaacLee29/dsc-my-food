import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:my_food/homepage/home_page.dart';

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
            color: defaultBackgroundColor,
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    // The text is 23 pixels in height
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.people_alt_outlined,
                              color: Colors.black),
                          padding: EdgeInsets.only(right: 10.0),
                        ),
                        Text(this._myDonations, style: defaultTextStyle),
                      ],
                    ),
                    padding: EdgeInsets.only(bottom: 10.0)),
                Container(
                    decoration: defaultContainerDecoration,
                    height: 145.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: 100.0,
                              alignment: Alignment.center,
                              child:
                                  SizedBox(
                                      height: 80.0,
                                      width: 80.0,
                                      child: CircularPercentIndicator(
                                        radius: 80.0,
                                        lineWidth: 8.0,
                                        percent:
                                            0.6,
                                        center: Text("60%",
                                            style: secondaryTextStyle),
                                        progressColor: defaultBackgroundColor,
                                      ))),
                          // Idea
                          // Donated:  300
                          // Target:   500
                          Row(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(_donated, style: secondaryTextStyle),
                                  Text(_target, style: secondaryTextStyle)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("300", style: secondaryTextStyle),
                                  Text("500", style: secondaryTextStyle)
                                ]
                              )
                            ]
                          )
                        ]))
              ],
            )));
  }
}
