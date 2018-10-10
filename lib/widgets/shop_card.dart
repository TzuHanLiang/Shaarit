import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  final Map<String, dynamic> shop;
  final int shopIndex;

  ShopCard(this.shop, this.shopIndex);

  Widget _buildShopDescriptionColumn() {
    return Container(
      child: Column(children: <Widget>[
        Text(shop['shopName']),
        Text(shop['coupon']),
        Text(shop['rebate']),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          // Image.asset(shop['image']),
          _buildShopDescriptionColumn(),
          Column(children: <Widget>[
            Icon(Icons.pin_drop),
            Text(shop['distance']),
          ],),
        ],
      ),
    );
  }
}
