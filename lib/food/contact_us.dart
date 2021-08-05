import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmissionForm extends StatefulWidget {
  const SubmissionForm({Key key}) : super(key: key);

  @override
  _SubmissionFormState createState() => _SubmissionFormState();
}

class _SubmissionFormState extends State<SubmissionForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Text(
                  'Leave your details below and our team will contact you within 1 working day.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Full Name'),
                // ignore: missing_return
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Full Name is required';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contact Number'),
                // ignore: missing_return
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Contact Number is required';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 45.0,
                  width: 130.0,
                  child: OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                side: BorderSide(width: 5)))),
                    onPressed: _submittable() ? _submit : null,
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
        ));
  }

  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      const SnackBar snackBar = SnackBar(content: Text('Form submitted'));

      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}

class ContactUs extends StatelessWidget {
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
          middle: Text("Contact Us"),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(padding: EdgeInsets.all(50.0)),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: SubmissionForm(),
            )
          ],
        )));
  }
}
