import 'package:flutter/material.dart';
import '../../models/shop.dart';

import '../ui_elements/shoplist_detail_amount.dart';
import '../ui_elements/shoplist_detail_visit.dart';
import '../ui_elements/shoplist_detail_shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;
  final int shopIndex;
  ShopCard(this.shop, this.shopIndex);
  // Widget _buildShopDescriptionColumn() {
  //   return Container(
  //     child:
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return
        //  Container(
        Ink(
      //  Card(
      // color: Color.fromRGBO(255, 255, 255, 0.0),
      padding: EdgeInsets.only(top: 0.0, left: 16.0, right: 16.0, bottom: 24.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.circular(4.0),
              child: Image.asset(
                shop.image,
                height: 120.0,
                width: 382.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              constraints: BoxConstraints(
                maxHeight: 45.0,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Column(children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    ShopListDetailShop(
                        shop.category.toUpperCase(), shop.shopName),
                    shop.visit
                        ? ShopListDetailVisit('已造訪 ｜')
                        : ShopListDetailVisit('未造訪 ｜'),
                    ShopListDetailVisit(
                        "${shop.distance.toInt().toString()} m"),
                  ]),
                ),
                SizedBox(width: 9.0),
                Row(
                  children: <Widget>[
                    Text(
                      "%",
                      style: const TextStyle(
                          color: const Color(0xffe10813),
                          fontWeight: FontWeight.w700,
                          fontFamily: "ArialRoundedMT",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0),
                    ),
                    ShopListDetailAmount(
                        'coupon', shop.coupon.toInt().toString()),
                    Text(
                      "\$",
                      style: const TextStyle(
                          color: const Color(0xffe10813),
                          fontWeight: FontWeight.w700,
                          fontFamily: "ArialRoundedMT",
                          fontStyle: FontStyle.normal,
                          fontSize: 7.0),
                    ),
                    ShopListDetailAmount(
                        'bonus', shop.rebate.toInt().toString()),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
