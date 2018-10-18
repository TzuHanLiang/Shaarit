import 'package:flutter/material.dart';

import './shops.dart';
// import '../ui_elements/shoplist_category_label.dart';
import '../ui_elements/shoplist_category_button.dart';

class ShopsContainer extends StatelessWidget {
  final double heightbar = 8.0;
  final String shopType;
  ShopsContainer(this.shopType);

  List<Widget> _buildCategoryButtons({bool growable: true}) {
    List<Widget> categoryButtons;
    if (shopType == 'restaurant') {
      categoryButtons = [
        ShopListCategoryButton('泰式', () {}),
        ShopListCategoryButton('中菜', () {}),
        ShopListCategoryButton('日式', () {}),
        ShopListCategoryButton('韓式', () {}),
        ShopListCategoryButton('法式', () {}),
        ShopListCategoryButton('粵菜', () {}),
      ];
    } else if (shopType == 'hotel') {
      categoryButtons = [
        ShopListCategoryButton('商旅', () {}),
        ShopListCategoryButton('Airbnb', () {}),
        ShopListCategoryButton('Motel', () {}),
        ShopListCategoryButton('度假村', () {}),
        ShopListCategoryButton('溫泉', () {}),
      ];
    } else if (shopType == 'massage') {
      categoryButtons = [
        ShopListCategoryButton('足底按摩', () {}),
        ShopListCategoryButton('水療會館', () {}),
        ShopListCategoryButton('韓式汗蒸', () {}),
        ShopListCategoryButton('度假村', () {}),
      ];
    } else if (shopType == 'beauty') {
      categoryButtons = [
        ShopListCategoryButton('微整形', () {}),
        ShopListCategoryButton('臉部保養', () {}),
        ShopListCategoryButton('睫毛嫁接', () {}),
        ShopListCategoryButton('整牙', () {}),
        ShopListCategoryButton('新娘秘書', () {}),
      ];
    }
    return categoryButtons;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: _buildCategoryButtons(),
      //   ),
      // ),
      body: new Column(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 8.0),
            constraints: BoxConstraints(maxHeight: 35.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _buildCategoryButtons(),
            ),
          ),
          new Expanded(
            child: Shops(shopType),
          ),
        ],
      ),
    );
  }
}
