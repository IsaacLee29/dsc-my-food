import 'package:flutter/material.dart';

class EventCardButton extends StatelessWidget {
  EventCardButton({
    @required this.eventTitle,
    @required this.image,
    @required this.context,
    @required this.margin,
    @required this.page,

  });

  final String eventTitle;
  final String image;
  final BuildContext context;
  final EdgeInsetsGeometry margin;
  final Widget page;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => this.page))
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child:
                    Image.asset(this.image, height: 150, fit: BoxFit.fitWidth)
              ),
              ListTile(
                title: Text(this.eventTitle),
                tileColor: Color(0xFFFFCCBC),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
