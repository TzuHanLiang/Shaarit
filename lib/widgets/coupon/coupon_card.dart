import 'package:flutter/material.dart';
import '../../models/coupon.dart';

class CouponCard extends StatelessWidget {
  final Coupon coupon;
  final int couponIndex;

  CouponCard(this.coupon, this.couponIndex);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, top: 100.0, bottom: 150.0),
            child: Card(
              color: Colors.red,
              elevation: 6.0,
              margin: EdgeInsets.all(0.0),
              child: Column(children: <Widget>[
                Image.asset(
                  'assets/food.jpg',
                  height: 180.0,
                  width: 320.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(children: <Widget>[
                        FlatButton(
                          child: Text(coupon.shopName),
                          onPressed: () {},
                        ),
                        Text(coupon.shopType + '/' + coupon.category),
                        Text('被推薦過：' +
                            coupon.recommendNumberOfTimes.toString() +
                            '次'),
                      ]),
                      Row(
                        children: <Widget>[
                          Text(
                            coupon.coupon.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 60.0),
                          ),
                          Column(children: <Widget>[
                            Text(
                              '%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Off',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ])
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
