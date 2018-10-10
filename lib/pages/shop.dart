import 'dart:async';

import 'package:flutter/material.dart';



class ShopPage extends StatelessWidget {
  final String shopName;
  final String shopType;
  final String image;
  final double coupon;
  final double rebate;
  final double distance;
  final bool visit;

  ShopPage(this.shopName, this.shopType, this.image, this.coupon, this.rebate, this.distance, this.visit);

  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Image.asset(image),
            
            
          ],
        ),
      ),
    );
  }
}
