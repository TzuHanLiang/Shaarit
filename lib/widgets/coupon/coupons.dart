import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './coupon_card.dart';
import '../../models/coupon.dart';
import '../../scoped-models/my_models.dart';

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
    return ListView(children: <Widget>[
      // Positioned(
      //   top: MediaQuery.of(context).size.width * .05,
      //   left: MediaQuery.of(context).size.width * .33,
      //   child: 
        Transform.translate(
          offset: Offset(0.0, 0.0),
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_upward, color: Colors.grey),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.grey)),
            ),
            SizedBox(height: 8.0),
            Text(
              '向上滑動推薦給朋友',
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ),
      // ),

      // Positioned(
      //   top: MediaQuery.of(context).size.height*.13,
      //   width: MediaQuery.of(context).size.width,
      //   child:
         Container(
          height: MediaQuery.of(context).size.height*.42,
          child:ScopedModelDescendant<MyModels>(
            builder: (BuildContext context, Widget child, MyModels model) {
          return _buildCouponList(model.coupons);
        }),),
        
      // ),
      // Positioned(
      //   top: MediaQuery.of(context).size.height*.55,
      //   width: MediaQuery.of(context).size.width,
      //   child: 
        // Container(
        //   height: MediaQuery.of(context).size.height*.42,
        //   child:ScopedModelDescendant<MyModels>(
        //     builder: (BuildContext context, Widget child, MyModels model) {
        //   return _buildCouponList(model.coupons);
        // }),),   
      // ),
      
    ]);
  }
}
