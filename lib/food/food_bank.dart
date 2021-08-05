import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_food/common_widgets/elevated_button.dart';

class FoodBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black87,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          middle: Text("Food Bank Around You"),
        ),
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Text(
                'Donate your extra food to the nearest food bank.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => {
                    // TODO
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/image/yayasan.png',
                            height: 150, fit: BoxFit.fitWidth),
                      ),
                      ListTile(
                        title: Text('Yayasan Food Bank'),
                        subtitle: Text('Location 1'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => {
                    // TODO
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/image/yayasan.png',
                            height: 150, fit: BoxFit.fitWidth),
                      ),
                      ListTile(
                        title: Text('Yayasan Food Bank'),
                        subtitle: Text('Location 1'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => {
                    // TODO
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('lib/image/yayasan.png',
                            height: 150, fit: BoxFit.fitWidth),
                      ),
                      ListTile(
                        title: Text('Yayasan Food Bank'),
                        subtitle: Text('Location 1'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
