import 'package:flutter/material.dart';
import '../widgets/shop/container.dart';

import '../widgets/ui_elements/gradient_appbar.dart';
import '../widgets/ui_elements/shoplist_category_button.dart';

class ShopListPage extends StatelessWidget {
  final List<String> shopType = [
    'restaurant',
    'hotel',
    'massage',
    'beauty',
  ];

  Widget build(BuildContext context) {
    void _showbottomsheet() {
      showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 50.0,
                  color: Colors.red,
                  child: Row(
                    children: <Widget>[Text('Sort'), Icon(Icons.sort)],
                  ),
                ),
                SingleChildScrollView(
                    child: Column(children: [
                  ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Coupon | '),
                        // FlatButton(
                        //   onPressed: () {},
                        //   child: Text('Coupon | '),
                        // ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_upward),
                              Text('多到少'),
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_downward),
                              Text('少到多'),
                            ],
                          ),
                        ),
                      ]),
                  ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('回饋金 | '),
                        // FlatButton(
                        //   onPressed: () {},
                        //   child: Text('回饋金 | '),
                        // ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_upward),
                              Text('多到少'),
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_downward),
                              Text('少到多'),
                            ],
                          ),
                        ),
                      ]),
                  ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('距離 | '),
                        // FlatButton(
                        //   onPressed: () {},
                        //   child: Text('距離 | '),
                        // ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_upward),
                              Text('近到遠'),
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_downward),
                              Text('遠到近'),
                            ],
                          ),
                        ),
                      ]),
                  ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('我去過的 | '),
                        // FlatButton(
                        //   onPressed: () {},
                        //   child: Text('我去過的 | '),
                        // ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_upward),
                              Text('多到少'),
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_downward),
                              Text('少到多'),
                            ],
                          ),
                        ),
                      ]),
                ])),
              ],
            );
          });
    }

    return Scaffold(
      body: new Column(
        children: <Widget>[
          GradientAppBar('Shops'),
          new Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * .77),
            child: new Column(
              children: <Widget>[
                new Container(
                  constraints: BoxConstraints(maxHeight: 67.0),
                  child: ButtonBar(children: <Widget>[
                    ShopListCategoryButton('餐廳', (){}),
                    ShopListCategoryButton('美容', (){}),
                    ShopListCategoryButton('推拿', (){}),
                    ShopListCategoryButton('桑拿', (){}),
                  ]),
                ),
                new Expanded(
                  child: ShopsContainer(shopType[0]),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () => _showbottomsheet(),
          label: Text('Sort'),
          icon: Icon(Icons.sort)),
    );
  }
}
