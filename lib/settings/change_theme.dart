import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_food/common_widgets/elevated_button.dart';

class ChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SafeArea(
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: CupertinoNavigationBarBackButton(
            color: Colors.black87,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
            middle: Text("Change App Theme Colors"),
        ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current Theme Color",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomElevatedButton(
                    color: Colors.deepOrange[100],
                    height: 50.0,
                    child: Text(
                        "Primary Color"
                    ),
                    onPressed: (){}),
                const SizedBox(
                  height: 30.0,
                ),
                CustomElevatedButton(
                    color: Colors.teal[700],
                    height: 50.0,
                    child: Text(
                      "Accent Color"
                    ),
                    onPressed: (){}),
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Select Other Themes",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    CustomCircleButton(primaryColor: Color(0xFF222831),
                        accentColor: Color(0xFFeeeeee)),
                    CustomCircleButton(primaryColor:  Color(0xFFb68973),
                        accentColor: Color(0xFF1e212d)),
                    CustomCircleButton(primaryColor: Color(0xFFa4ebf3),
                        accentColor: Color(0xFFaaaaaa)),
                    CustomCircleButton(primaryColor: Color(0xFFd3e0ea),
                        accentColor: Color(0xff1687a7)),
                    CustomCircleButton(primaryColor: Color(0xFFd4e2d4),
                        accentColor: Color(0xFFdf7861))
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: 45.0,
                    width: 130.0,
                    child: OutlinedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  side: BorderSide(width: 5)))),
                      onPressed: (){},
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            ),
      )),
    );
  }
}

class CustomCircleButton extends StatelessWidget {
  CustomCircleButton({
    @required this.primaryColor, @required this.accentColor
});
  final Color primaryColor;
  final Color accentColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          primary: this.primaryColor
        ),
        child: Container(
          width: 50.0,
          height: 50.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Icon(
            Entypo.check,
            color: this.accentColor,
          ),
        ));
  }
}

