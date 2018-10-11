import 'package:flutter/material.dart';

import '../widgets/coupon/coupons.dart';
import '../models/coupon.dart';

class MyCouponPage extends StatelessWidget {
 

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(children: <Widget>[
        SizedBox(height: 30.0),
        Row(children: <Widget>[
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ]),
        Coupons(),
      ]),
    );
  }
}
