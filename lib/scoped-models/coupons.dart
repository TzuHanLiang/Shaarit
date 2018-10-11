import 'package:scoped_model/scoped_model.dart';

import '../models/coupon.dart';

class CouponsModel extends Model {
  List<Coupon> _coupons = [];

  List<Coupon> get coupon {
    return List.from(_coupons);
  }
}
