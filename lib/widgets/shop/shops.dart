import 'package:flutter/material.dart';
import './shop_card.dart';
import '../../models/shop.dart';

class Shops extends StatelessWidget {
  final List<Shop> shops;
  Shops(this.shops);

  Widget _buildShopList() {
    Widget shopCards;
    if (shops.length > 0) {
      shopCards = ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) =>
            ShopCard(shops[index], index),
        itemCount: shops.length,
      );
    } else {
      shopCards = Container();
    }
    return shopCards;
  }

  @override
  Widget build(BuildContext context) {
    return _buildShopList();
  }
}
