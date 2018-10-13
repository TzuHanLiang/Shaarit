import 'package:flutter/material.dart';
import '../../models/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;
  final int shopIndex;

  ShopCard(this.shop, this.shopIndex);

  Widget _buildVisitStatue(Shop shop){
    if(shop.visit){
      return Text('已造訪 |' + shop.distance.toString());
    }else{
      return Text('未造訪 |' + shop.distance.toString());
    }

  }

  Widget _buildShopDescriptionColumn() {
    return Container(
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          Text(shop.shopName),
          _buildVisitStatue(shop),
        ]),
        Row(
          children: <Widget>[
            Text('Coupon: ' + shop.coupon.toString() + '%'),
            Text('  Bonus: ' + shop.rebate.toString() + '%'),
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            shop.image,
            height: 100.0,
            width: 512.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0),
          _buildShopDescriptionColumn(),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
