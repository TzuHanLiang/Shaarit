import 'package:flutter/material.dart';
import '../widgets/shop/shops.dart';

class ShopListPage extends StatelessWidget {
  final List<String> shopType = [
    'foodDrinks',
    'spaMassage',
    'hotels',
    'beauty',
  ];

  final List<Tab> shopTypeTab = [
    Tab(text: 'Food & Drinks'),
    Tab(text: 'Spa & Massage'),
    Tab(text: 'Hotels'),
    Tab(text: 'Beauty'),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: shopTypeTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shops'),
          bottom: TabBar(
            tabs: shopTypeTab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.restaurant),
                Shops(shopType[0]),
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.receipt),
                Shops(shopType[1]),
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.beach_access),
                Shops(shopType[2]),
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.face),
                Shops(shopType[3]),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
