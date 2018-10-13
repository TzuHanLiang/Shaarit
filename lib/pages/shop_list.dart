import 'package:flutter/material.dart';
import '../widgets/shop/container.dart';


class ShopListPage extends StatelessWidget {
  final List<String> shopType = [
    'restaurant',
    'hotel',
    'massage',
    'beauty',
  ];

  final List<Tab> shopTypeTab = [
    Tab(text: '餐廳'),
    Tab(text: '飯店'),
    Tab(text: '按摩'),
    Tab(text: '美容'),
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

    return DefaultTabController(
      length: shopTypeTab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          title: Text('Shops'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.pin_drop),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            tabs: shopTypeTab,
          ),
        ),
        body: TabBarView(children: [
          ShopsContainer(shopType[0]),
          ShopsContainer(shopType[1]),
          ShopsContainer(shopType[2]),
          ShopsContainer(shopType[3]),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () => _showbottomsheet(),
            label: Text('Sort'),
            icon: Icon(Icons.sort)),
      ),
    );
  }
}
