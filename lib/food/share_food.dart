import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_food/common_widgets/elevated_button.dart';
import 'package:my_food/food/contact_us.dart';
import 'package:my_food/food/rider_pick_up.dart';

import 'food_bank.dart';

class ShareFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Share my food for needy',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomElevatedButton(
            color: Color(0xFF767C77),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FoodBank()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FlutterIcons.organization_oct),
                Text(
                  'Find The Nearest Food Bank',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomElevatedButton(
            color: Color(0xFF767C77),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RiderPickUp()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.delivery_dining,
                  size: 40,
                ),
                Text(
                  'Rider Pick Up From You',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "I'm Hungry... I Need Food",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomElevatedButton(
            color: Color(0xFF767C77),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FlutterIcons.hands_helping_faw5s, size: 30),
                Text(
                  'Contact us for help',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                // Opacity(opacity: 0, child: Icon(FlutterIcons.hands_helping_faw5s, size: 5,),)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
