import 'package:scoped_model/scoped_model.dart';

import '../models/shop.dart';
import '../models/coupon.dart';

class MyModels extends Model {
  List<Coupon> _coupons = [];
  List<Shop> _shops = [];

  List<Coupon> get coupon {
    return List.from(_coupons);
  }

  List<Shop> get shops {
    return List.from(_shops);
  }
}
