import 'package:flutter/material.dart';
import '../widgets/shops.dart';

class ShopListPage extends StatelessWidget {
  // final List<Map<String, dynamic>> shops;
  // ShopListPage(this.shops);

  final List<Tab> categoriesTab = [
    Tab(text: 'Food & Drinks'),
    Tab(text: 'Spa & Massage'),
    Tab(text: 'Hotels'),
    Tab(text: 'Beauty'),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categoriesTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shops'),
          bottom: TabBar(
            tabs: categoriesTab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.restaurant),
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.receipt),
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.beach_access),
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                Icon(Icons.face),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
