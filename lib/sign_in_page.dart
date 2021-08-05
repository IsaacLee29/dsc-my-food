import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  SignInPage({@required this.onSignIn});
  final Function(FirebaseUser) onSignIn;

  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(authResult.user);
    } catch(e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFAB91),
        body: new Container(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: new Image.asset('lib/image/Logo.png'),
              ),
              SizedBox(
                height: 300.0,
              ),
              // SpinKitRing(
              //   color: Colors.white,
              //   size: 50.0,
              //   duration: Duration(milliseconds: 1200),
              // ),
              SizedBox(
                height: 50.0,
                width: 200.0,
                child: RaisedButton(
                  onPressed: _signInAnonymously,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              )
            ])),
      );
  }
}
