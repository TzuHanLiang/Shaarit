import 'package:flutter/material.dart';
import '../../models/coupon.dart';


class CouponCard extends StatelessWidget {
  final Coupon coupon;
  final int couponIndex;

  CouponCard(this.coupon, this.couponIndex);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
          // Icon(Icons.beenhere),
          Image.asset('assets/food.jpg'),
          Row(
            children: <Widget>[
              Column(children: <Widget>[
                FlatButton(
                  child: Text(coupon.shopName),
                  onPressed: () {},
                ),
                Text(coupon.shopType+ '/'+ coupon.category),
                Text('被推薦過：' + coupon.recommendNumberOfTimes.toString() + '次'),
              ]),
              Text(coupon.coupon.toString()),
            ],
          ),
          FlatButton(
            child: Text('檢視 Coupon'),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
