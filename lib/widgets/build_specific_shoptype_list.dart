// List _buildSpecificShopTypeList(List<Shop> shops) {
//     List<Shop> _specificShopTypeList = [];
//     shops.map((shop) {
//       if (shopType == shop.shopType) {
//         _specificShopTypeList.add(shop);
//       }
//     });
//     return _specificShopTypeList;
//   }

//   Widget _buildButtonBar() {
//     if (shopType == 'restaurant') {
//       return ListView(scrollDirection: Axis.vertical, children: [
//         ButtonBar(children: <Widget>[
//           FlatButton(child: Text('泰式'), onPressed: () {}),
//           FlatButton(child: Text('中菜'), onPressed: () {}),
//           FlatButton(child: Text('日式'), onPressed: () {}),
//           FlatButton(child: Text('韓式'), onPressed: () {}),
//           FlatButton(child: Text('粵菜'), onPressed: () {}),
//         ]),
//       ]);
//     }
//   }

// Widget _buildSortingByShopType() {}

// Widget _buildSortingByCatogry() {}


List<String> restautant_categories = [
    '泰式',
    '中菜',
    '日式',
    '韓式',
    '粵菜',
    '法式',
  ];
  List<String> hotel_categories = [
    '商旅',
    'Airbnb',
    'Motel',
    '度假村',
    '溫泉',
  ];

  List<String> massage_categories = [
    '足底按摩',
    '水療會館',
    '韓式汗蒸',
    '度假村',
  ];

  List<String> beauty_categories = [
    '微整形',
    '新娘秘書',
    '睫毛嫁接',
    '臉部保養',
    '整牙',
  ];