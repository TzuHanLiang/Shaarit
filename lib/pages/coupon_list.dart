import 'package:flutter/material.dart';

import '../widgets/coupon/coupons.dart';
import './recommend.dart';

class MyCouponPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
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
        body: Stack(children: <Widget>[
          Positioned(
            top: 100.0,
            child: TabBarView(children: [
              Coupons(),
              RecommendationPage(),
            ]),
            // icon: Icon(Icons.arrow_upward)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .025,
            left: MediaQuery.of(context).size.width * .33,
            child: Transform.translate(
              offset: Offset(0.0, 0.0),
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.arrow_upward, color: Colors.grey),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.grey)),
                ),
                SizedBox(height: 8.0),
                Text(
                  '向上滑動推薦給朋友',
                  style: TextStyle(color: Colors.grey),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
