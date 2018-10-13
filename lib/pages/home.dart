import 'package:flutter/material.dart';

import './shop_list.dart';
import './coupon_list.dart';
import './get_coupon.dart';
import './profile.dart';

class MyHomePage extends StatefulWidget {
  final List<Widget> _pages = [
    ShopListPage(),
    MyCouponPage(),
    GetCouponPage(),
    ProfilePage(),
  ];
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  

  Widget build(BuildContext context) {
    return Scaffold(
      body: widget._pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('MyCoupon'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text('GetCoupon'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
