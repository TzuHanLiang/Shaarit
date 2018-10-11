import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      SizedBox(height: 40.0),
      RaisedButton(
          child: Text('Log out'),
          onPressed: () => Navigator.pushReplacementNamed(context, '/')),
      Text('Profile Page'),
    ]));
  }
}
