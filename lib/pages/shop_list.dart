import 'package:flutter/material.dart';
import '../widgets/shop/shops.dart';

class ShopListPage extends StatelessWidget {
  final List<String> shopType = [
    'resturant',
    'spaMassage',
    'hotels',
    'beauty',
  ];

  final List<Tab> shopTypeTab = [
    Tab(text: '餐廳'),
    Tab(text: '美容'),
    Tab(text: '推拿'),
    Tab(text: '桑拿'),
  ];

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

   Widget _buildSortingByShopType(){
    
  }


  Widget _buildSortingByCatogry(){
    
  }

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
        body: TabBarView(
          children: <Widget>[
            Shops(shopType[0]),
            Shops(shopType[1]),
            Shops(shopType[2]),
            Shops(shopType[3]),
            
          ],
        ),
      ),
    );
  }
}
