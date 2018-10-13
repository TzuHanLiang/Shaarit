import 'package:flutter/material.dart';
import '../widgets/shop/shops.dart';

class ShopListPage extends StatelessWidget {
  final List<String> shopType = [
    'restaurant',
    'hotel',
    'massage',
    'beauty',
  ];

  final List<Tab> shopTypeTab = [
    Tab(text: '餐廳'),
    Tab(text: '飯店'),
    Tab(text: '按摩'),
    Tab(text: '美容'),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: shopTypeTab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Shops'),
          bottom: TabBar(
            indicatorColor: Color.fromRGBO(255, 255, 255, 0.0),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: shopTypeTab,
          ),
        ),
        body: TabBarView(children: [
          Shops(shopType[0]),
          Shops(shopType[1]),
          Shops(shopType[2]),
          Shops(shopType[3]),
        ]),
      ),
    );
  }
}
