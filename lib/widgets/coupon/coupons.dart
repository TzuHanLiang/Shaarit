import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './coupon_card.dart';
import '../../models/coupon.dart';
import '../../scoped-models/coupons.dart';

class Coupons extends StatelessWidget {
  Widget _buildCouponList(List<Coupon> coupons) {
    Widget couponCards;
    if (coupons.length > 0) {
      couponCards = ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            CouponCard(coupons[index], index),
        itemCount: coupons.length,
      );
    } else {
      couponCards = Container();
    }
    return couponCards;
  }

  Widget build(BuildContext context) {
    return ScopedModelDescendant<CouponsModel>(builder: (BuildContext context, Widget child, CouponsModel model) {
      return _buildCouponList(model.coupon);
    });
  }
}
