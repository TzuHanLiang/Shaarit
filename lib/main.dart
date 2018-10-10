import 'package:flutter/material.dart';
import './pages/auth.dart';
import './pages/navigator.dart';
import './pages/shop_list.dart';
import './pages/shop.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _shops = [
    {
      'shopImage': '/assets/insinger.jpg',
      'shopName': 'Hooters',
      'shopType': 'foodDrinks',
      'coupon': 0.05,
      'rebate': 0.1,
      'address': 'taipei',
    },
    {
      'shopImage': '/assets/insinger.jpg',
      'shopName': 'Insinger',
      'shopType': 'foodDrinks',
      'coupon': 0.1,
      'rebate': 0.15,
      'address': 'taipei',
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/navigator': (BuildContext context) => NavigatorPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'shop') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ShopPage(
                _shops[index]['shopName'],
                _shops[index]['shopType'],
                _shops[index]['image'],
                _shops[index]['coupon'],
                _shops[index]['rebate'],
                _shops[index]['distance'],
                _shops[index]['visit']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ShopListPage());
      },
    );
  }
}
