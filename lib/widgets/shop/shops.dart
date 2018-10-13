import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './shop_card.dart';

import '../../models/shop.dart';
import '../../scoped-models/my_models.dart';

class Shops extends StatelessWidget {
  final String shopType;
  Shops(this.shopType);

  Widget _buildButtonBar() {
    if (shopType == 'restaurant') {
      return ListView(
        scrollDirection: Axis.vertical, 
      children: [
        ButtonBar(children: <Widget>[
          FlatButton(child: Text('泰式'), onPressed: () {}),
          FlatButton(child: Text('中菜'), onPressed: () {}),
          FlatButton(child: Text('日式'), onPressed: () {}),
          FlatButton(child: Text('韓式'), onPressed: () {}),
          FlatButton(child: Text('粵菜'), onPressed: () {}),
        ]),
      ]);
    }
  }

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
      return _buildShopList(model.shops);
    });
  }
}
