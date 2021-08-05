import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RiderPickUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black87,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          middle: Text("Fill In Your Details"),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(padding: EdgeInsets.all(50.0)),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: RegisterForm(),
            )
          ],
        )));
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    int _value;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            decoration:
                const InputDecoration(labelText: 'Food Item Description'),
          ),
          const SizedBox(height: 16.0),

          const SizedBox(height: 16.0),
          Text('Food Photos (Optional)'),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTOS,
                  onChanged: _setAgreedToTOS,
                ),
                GestureDetector(
                  onTap: () => _setAgreedToTOS(!_agreedToTOS),
                  child: const Text(
                    'I agree to the Terms of Services.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
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
          ),
        ],
      ),
    );
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

  showPicker() {
    int _value;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CupertinoPicker(
              children: const [
                Text("Item01"),
                Text("Item02"),
                Text("Item03"),
              ],
              itemExtent: 32.0,
              onSelectedItemChanged: (value) {
                setState(() {
                  _value = value;
                });
              });
        });
  }
}
