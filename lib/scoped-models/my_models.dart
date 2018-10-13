import 'package:scoped_model/scoped_model.dart';

import '../models/shop.dart';
import '../models/coupon.dart';

class MyModels extends Model {
  List<Coupon> _coupons = [];
  List<Shop> _shops = [
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, false),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, false),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, false),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, false),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
    Shop('assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 'Taipei', 90.0,
        10.0, 20.0, true),
  ];

  List<Coupon> get coupon {
    return List.from(_coupons);
  }

  List<Shop> get shops {
    return List.from(_shops);
  }
}
