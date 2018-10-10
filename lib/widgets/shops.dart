import 'package:flutter/material.dart';

import './shop_card.dart';

class Shops extends StatelessWidget {
  final List<Map<String, dynamic>> shops;

  Shops(this.shops);

  Widget _buildShopList() {
    Widget shopCards;
    if (shops.length > 0) {
      shopCards = ListView.builder(
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
