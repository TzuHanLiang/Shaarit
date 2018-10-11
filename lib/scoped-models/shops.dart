import 'package:scoped_model/scoped_model.dart';
import '../models/shop.dart';

class ShopsModel extends Model {
  List<Shop> _shops = [];
  
  List<Shop> get shops {
    return List.from(_shops);
  }
}
