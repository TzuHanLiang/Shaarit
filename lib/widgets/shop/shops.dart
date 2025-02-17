import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './shop_card.dart';

import '../../models/shop.dart';
import '../../scoped-models/my_models.dart';

class Shops extends StatelessWidget {
  final String shopType;
  Shops(this.shopType);

  Widget _buildShopList(List<Shop> shops) {
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
    return ScopedModelDescendant<MyModels>(
        builder: (BuildContext context, Widget child, MyModels model) {
      switch (shopType) {
        case 'restaurant':
          return _buildShopList(model.restaurant);
          case 'hotel':
          return _buildShopList(model.hotel);
          case 'massage':
          return _buildShopList(model.massage);
          case 'beauty':
          return _buildShopList(model.beauty);
      }
    });
  }
}
