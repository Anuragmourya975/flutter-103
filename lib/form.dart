import 'package:flutter/material.dart';

class LastScreen extends StatefulWidget {
  @override
  _LastScreenState createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter Name'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter Branch',
              labelText: "Enter Branch",
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter An Adsress'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Enter Phone Number'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Correct Phone Number';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formkey.currentState.validate()) {
                print('The Form Is Valid');
              }
            },
            child: Text("Make ID Card"),
          ),
        ],
      ),
    );
  }
}
