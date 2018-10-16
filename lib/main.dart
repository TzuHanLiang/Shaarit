import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:scoped_model/scoped_model.dart';

import './pages/auth.dart';
import './pages/register.dart';
import './pages/home.dart';
import './pages/shop_list.dart';
import './pages/shop_detail.dart';
import './pages/coupon_detail.dart';

import './scoped-models/my_models.dart';

main() {
  // debugPaintSizeEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return ScopedModel <MyModels> (
      model: MyModels(),
        child: MaterialApp(
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/resgister': (BuildContext context) => RegisterPage(),
        '/home': (BuildContext context) => MyHomePage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'shop') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ShopPage(index));
        } else if (pathElements[1] == 'coupon') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => CouponPage());
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ShopListPage());
      },
    ));
  }
}
