import 'package:flutter/material.dart';

import '../presentation/shaarit_app_icons.dart';

import './shop_list_tabview.dart';
// import './shop_list_button_nav.dart';
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
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Shaarit.shops),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Shaarit.mycoupon),
            title: Text('MyCoupon'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Shaarit.getcoupon),
            title: Text('GetCoupon'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Shaarit.profile),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
