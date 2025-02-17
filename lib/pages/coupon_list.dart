import 'package:flutter/material.dart';

import '../widgets/coupon/coupons.dart';
import './recommend.dart';

class MyCouponPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red[200],
                title: Text('My Coupon'),
                bottom: TabBar(
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.red,
                  tabs: <Widget>[
                    Tab(text: 'My Coupons'),
                    Tab(text: 'My Recommendation')
                  ],
                ),
              ),
              body: TabBarView(children: [
                Coupons(),
                RecommendationPage(),
              ]),
              // icon: Icon(Icons.arrow_upward)),
            ),
          ),
        ),
        
      ],
    );
  }
}
