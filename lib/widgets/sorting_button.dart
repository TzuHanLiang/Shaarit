import 'package:flutter/material.dart';

class SortingButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return ButtonBar(
      mainAxisSize: MainAxisSize.min,
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          child: Row(children: <Widget>[
            Icon(Icons.arrow_downward),
            Text('Coupon'),
          ]),
          onPressed: () {},
        ),
        RaisedButton(
          child: Row(children: <Widget>[
            Icon(Icons.arrow_downward),
            Text('Rebate'),
          ]),
          onPressed: () {},
        ),
        RaisedButton(
          child: Row(children: <Widget>[
            Icon(Icons.arrow_downward),
            Text('Distance'),
          ]),
          onPressed: () {},
        ),
        RaisedButton(
          child: Row(children: <Widget>[
            Icon(Icons.arrow_downward),
            Text('Been There'),
          ]),
          onPressed: () {},
        ),
      ],
    );
  }
}
