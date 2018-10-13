import 'package:flutter/material.dart';

import './shops.dart';

class ShopsContainer extends StatelessWidget {
  final String shopType;
  ShopsContainer(this.shopType);


  List<FlatButton> _buildCategoryButtons({bool growable: true}) {
    List<FlatButton> categoryButtons;
    if (shopType == 'restaurant') {
      categoryButtons =[
            FlatButton(child: Text('泰式'), onPressed: () {}),
            FlatButton(child: Text('中菜'), onPressed: () {}),
            FlatButton(child: Text('日式'), onPressed: () {}),
            FlatButton(child: Text('韓式'), onPressed: () {}),
            FlatButton(child: Text('粵菜'), onPressed: () {}),
            FlatButton(child: Text('法式'), onPressed: () {}),
          ];
    } else if (shopType == 'hotel') {
      categoryButtons =[
            FlatButton(child: Text('商旅'), onPressed: () {}),
            FlatButton(child: Text('Airbnb'), onPressed: () {}),
            FlatButton(child: Text('Motel'), onPressed: () {}),
            FlatButton(child: Text('度假村'), onPressed: () {}),
            FlatButton(child: Text('溫泉'), onPressed: () {}),
            
          ];
    } else if (shopType == 'massage') {
      categoryButtons =[
            FlatButton(child: Text('足底按摩'), onPressed: () {}),
            FlatButton(child: Text('水療會館'), onPressed: () {}),
            FlatButton(child: Text('韓式汗蒸'), onPressed: () {}),
            FlatButton(child: Text('度假村'), onPressed: () {}),
          ];
    } else if (shopType == 'beauty') {
      categoryButtons =[
            FlatButton(child: Text('微整形'), onPressed: () {}),
            FlatButton(child: Text('臉部保養'), onPressed: () {}),
            FlatButton(child: Text('睫毛嫁接'), onPressed: () {}),
            FlatButton(child: Text('整牙'), onPressed: () {}),
            FlatButton(child: Text('新娘秘書'), onPressed: () {}),
          ];
    }
    return categoryButtons;

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ListView(
          scrollDirection: Axis.horizontal, children: _buildCategoryButtons(),
          // [
          //   FlatButton(child: Text('泰式'), onPressed: () {}),
          //   FlatButton(child: Text('中菜'), onPressed: () {}),
          //   FlatButton(child: Text('日式'), onPressed: () {}),
          //   FlatButton(child: Text('韓式'), onPressed: () {}),
          //   FlatButton(child: Text('粵菜'), onPressed: () {}),
          //   FlatButton(child: Text('法式'), onPressed: () {}),
          // ]
        ),
      ),
      body: Shops(shopType),
    );
  }
}
