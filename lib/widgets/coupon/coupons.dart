import 'package:flutter/material.dart';
import './coupon_card.dart';
import '../../models/coupon.dart';

class Coupons extends StatelessWidget{
  final List<Coupon> coupons;
  Coupons(this.coupons);

  Widget _buildCouponList(){
    Widget couponCards;
    if(coupons.length > 0){
      couponCards = ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
          CouponCard(coupons[index], index),
        itemCount: coupons.length,
      );
    }else{
      couponCards = Container();
    }
    return couponCards;
  }

  Widget build(BuildContext context){
    return _buildCouponList();
  }


}