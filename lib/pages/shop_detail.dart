import 'dart:async';

import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import '../models/shop.dart';
import '../scoped-models/my_models.dart';


class ShopPage extends StatelessWidget {
  final int shopIndex;
  ShopPage(this.shopIndex);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Image.asset(image),
            
            
          ],
        ),
      ),
    );
  }
}
