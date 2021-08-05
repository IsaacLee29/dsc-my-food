import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {@required this.child,
      this.color,
      this.borderRadius: 5.0,
      this.height: 100.0,
      @required this.onPressed});

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
          height: this.height,
          child: ElevatedButton(
            onPressed: this.onPressed,
            child: this.child,
            style: ElevatedButton.styleFrom(
              primary: this.color,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0)
              )
            ),
          ),
        ),
    );
  }
}
