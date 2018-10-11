import 'package:flutter/material.dart';
import '../../models/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;
  final int shopIndex;

  ShopCard(this.shop, this.shopIndex);

  Widget _buildShopDescriptionColumn() {
    return Container(
      child: Column(children: <Widget>[
        Text(shop.shopName),
        Text(shop.coupon.toString()),
        Text(shop.rebate.toString()),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Image.asset(shop.image),
          _buildShopDescriptionColumn(),
          Row(
            children: <Widget>[
              Icon(Icons.pin_drop),
              Text(shop.distance.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
