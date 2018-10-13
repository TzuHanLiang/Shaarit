import 'package:scoped_model/scoped_model.dart';

import '../models/shop.dart';
import '../models/coupon.dart';

class MyModels extends Model {
  List<Coupon> _coupons = [
    Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang', 'assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
      Coupon('Liz Liang','assets/food.jpg', 'Lady M', 'restaurant', 'Pastry', 10.0, 100,
          ),
  ];

  Map<String, List<Shop>> _shops = {
    'restaurant': [
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
    ],
    'hotel': [
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/whotel.jpg', 'W Hotel', 'hotel', 'Classic', 'Taipei', 90.0,
          10.0, 20.0, true),
    ],
    'massage': [
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, false),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
      Shop('assets/massage.jpg', 'Relax', 'massage', 'Pastry', 'Taipei', 90.0,
          10.0, 20.0, true),
    ],
    'beauty': [
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, false),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, false),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, false),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, false),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
      Shop('assets/loccitane.jpg', 'L\'OCCITANE', 'beauty', 'Pastry', 'Taipei',
          90.0, 10.0, 20.0, true),
    ],
  };

  List<Coupon> get coupons {
    return List.from(_coupons);
  }

  List<Shop> get restaurant {
    return List.from(_shops['restaurant']);
  }

  List<Shop> get hotel {
    return List.from(_shops['hotel']);
  }

  List<Shop> get massage {
    return List.from(_shops['massage']);
  }

  List<Shop> get beauty {
    return List.from(_shops['beauty']);
  }
}
