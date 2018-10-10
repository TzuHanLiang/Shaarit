import 'package:flutter/material.dart';

import './shop_list.dart';
import './my_coupon.dart';
import './get_coupon.dart';
import './profile.dart';

class NavigatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NavigatorPageState();
  }
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    ShopListPage(),
    MyCouponPage(),
    GetCouponPage(),
    ProfilePage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
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
