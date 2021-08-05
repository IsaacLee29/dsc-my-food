import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

/// Stateful [Widget] to get the current day and date.
/// It wraps a [Container] around a [Text] that indicates the current day and date.
class CurrentDate extends StatefulWidget {
  @override
  _CurrentDateState createState() => _CurrentDateState();
}

class _CurrentDateState extends State<CurrentDate> {
  final String dayDateMonthYear = DateFormat('EEEE, d MMM yyyy').format(
    DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.dayDateMonthYear,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
