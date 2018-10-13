import 'package:flutter/material.dart';

import '../../models/shop.dart';
import './shops.dart';

class ShopsContainer extends StatelessWidget {
  final String shopType;
  ShopsContainer(this.shopType);

  Widget _buildSpecificButtons() {
    Widget specificButtonBar;
    switch (shopType) {
      case 'restaurant':
        return specificButtonBar = ButtonBar(children: [
          FlatButton(child: Text('泰式'), onPressed: () {}),
          FlatButton(child: Text('中菜'), onPressed: () {}),
          FlatButton(child: Text('日式'), onPressed: () {}),
          FlatButton(child: Text('韓式'), onPressed: () {}),
          FlatButton(child: Text('粵菜'), onPressed: () {}),
          FlatButton(child: Text('法式'), onPressed: () {}),
        ]);
      case 'hotel':
        return specificButtonBar = ButtonBar(children: [
          FlatButton(child: Text('商旅'), onPressed: () {}),
          FlatButton(child: Text('Airbnb'), onPressed: () {}),
          FlatButton(child: Text('Motel'), onPressed: () {}),
          FlatButton(child: Text('度假村'), onPressed: () {}),
          FlatButton(child: Text('溫泉'), onPressed: () {}),
        ]);
      case 'massage':
        return specificButtonBar = ButtonBar(children: [
          FlatButton(child: Text('足底按摩'), onPressed: () {}),
          FlatButton(child: Text('水療會館'), onPressed: () {}),
          FlatButton(child: Text('韓式汗蒸'), onPressed: () {}),
          FlatButton(child: Text('度假村'), onPressed: () {}),
        ]);
      case 'hotel':
        return specificButtonBar = ButtonBar(children: [
          FlatButton(child: Text('微整形'), onPressed: () {}),
          FlatButton(child: Text('新娘秘書'), onPressed: () {}),
          FlatButton(child: Text('睫毛嫁接'), onPressed: () {}),
          FlatButton(child: Text('臉部保養'), onPressed: () {}),
          FlatButton(child: Text('整牙'), onPressed: () {}),
        ]);
    }
    return specificButtonBar;
  }

  Widget build(BuildContext context) {
    print(_buildSpecificButtons());

    return Scaffold(
      body: Shops(shopType),
    );
  }
}
