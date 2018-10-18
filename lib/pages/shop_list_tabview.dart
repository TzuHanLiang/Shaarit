import 'package:flutter/material.dart';
import '../widgets/shop/container.dart';

import '../widgets/ui_elements/gradient_appbar.dart';
import '../widgets/ui_elements/shoplist_tab.dart';
import '../widgets/ui_elements/shoplist_sorting_button.dart';
import '../presentation/shaarit_app_icons.dart';

class ShopListPage extends StatelessWidget {
  final List<String> shopType = [
    'restaurant',
    'hotel',
    'massage',
    'beauty',
  ];

  final List<Tab> shopTypeTab = [
    Tab(
      child: ShopListTab('餐廳'),
    ),
    Tab(
      child: ShopListTab('飯店'),
    ),
    Tab(
      child: ShopListTab('按摩'),
    ),
    Tab(
      child: ShopListTab('美容'),
    ),
  ];

  Widget build(BuildContext context) {
    void _showModalBottomSheet() {
      showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Theme(
              data: ThemeData(canvasColor: Colors.black),
              child: Container(
                color: Color.fromRGBO(255, 255, 255, 0.0),
                child: Container(
                  height: 280.0,
                  width: 414.0,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(8.0),
                          topRight: const Radius.circular(8.0))),
                  child: Stack(children: [
                    Positioned(
                      child: Container(
                        width: 414.0,
                        height: 43.5,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(226, 226, 226, 1.0),
                                width: 1.0,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16.0,
                      left: 177.0,
                      child: Row(children: [
                        Text(
                          "Sort",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "DIN",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0),
                        ),
                        Icon(Shaarit.ic_filter_black)
                      ]),
                    ),
                    Positioned(
                      top: 84.0,
                      right: 289.0,
                      child: ShopListSortingButton('Coupon | ', () {}),
                    ),
                    Positioned(
                      top: 84.0,
                      left: 165.0,
                      child: ShopListSortingButton('多到少', () {}),
                    ),
                    Positioned(
                      top: 84.0,
                      left: 293.0,
                      child: ShopListSortingButton('少到多', () {}),
                    ),
                    Positioned(
                      top: 132.0,
                      right: 289.0,
                      child: ShopListSortingButton('回饋金 | ', () {}),
                    ),
                    Positioned(
                      top: 132.0,
                      left: 165.0,
                      child: ShopListSortingButton('多到少', () {}),
                    ),
                    Positioned(
                      top: 132.0,
                      left: 293.0,
                      child: ShopListSortingButton('少到多', () {}),
                    ),
                    Positioned(
                      top: 180.0,
                      right: 289.0,
                      child: ShopListSortingButton('距離 | ', () {}),
                    ),
                    Positioned(
                      top: 180.0,
                      left: 165.0,
                      child: ShopListSortingButton('遠到近', () {}),
                    ),
                    Positioned(
                      top: 180.0,
                      left: 293.0,
                      child: ShopListSortingButton('近到遠', () {}),
                    ),
                    Positioned(
                      top: 228.0,
                      right: 289.0,
                      child: ShopListSortingButton('我去過的 | ', () {}),
                    ),
                    Positioned(
                      top: 228.0,
                      left: 165.0,
                      child: ShopListSortingButton('多到少', () {}),
                    ),
                    Positioned(
                      top: 228.0,
                      left: 293.0,
                      child: ShopListSortingButton('少到多', () {}),
                    ),
                  ]),
                ),
              ),
            );
          });
    }

    return
        // DefaultTabController(
        //   length: shopTypeTab.length,
        //   child:
        Scaffold(
      // backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text('Shops'),
      //   actions: <Widget>[
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.pin_drop),
      //     )
      //   ],
      // bottom: TabBar(
      //   indicatorColor: Colors.red,
      //   labelColor: Colors.red,
      //   unselectedLabelColor: Colors.grey,
      //   tabs: shopTypeTab,
      // ),
      // ),
      body: new Column(
        children: <Widget>[
          GradientAppBar('Shops'),
          new Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * .77),
            child: DefaultTabController(
              length: shopTypeTab.length,
              child: new Column(
                children: <Widget>[
                  new Container(
                    constraints: BoxConstraints(maxHeight: 67.0),
                    child: new Material(
                      color: Colors.transparent,
                      child: new TabBar(
                        tabs: shopTypeTab,
                        indicatorColor: Colors.transparent,
                        labelColor: Color.fromRGBO(255, 8, 19, 1.0),
                        unselectedLabelColor:
                            Color.fromRGBO(155, 155, 155, 1.0),
                        // labelPadding: EdgeInsets.only(
                        //     bottom: 8.0, right: 16.0, left: 16.0, top: 8.0),
                        labelStyle: TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "PingFangTC",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: TabBarView(children: [
                      ShopsContainer(shopType[0]),
                      ShopsContainer(shopType[1]),
                      ShopsContainer(shopType[2]),
                      ShopsContainer(shopType[3]),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RawMaterialButton(
        fillColor: Colors.white,
        child: Row(
          children: <Widget>[
            Text("Sort",
                style: const TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500,
                    fontFamily: "DIN",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
            Icon(Icons.sort),
          ],
        ),
        constraints: BoxConstraints(maxWidth: 120.0, minHeight: 43.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(21.5)),
        onPressed: () => _showModalBottomSheet(),
      ),
      // ButtonTheme(
      //   height: 43.0,
      //   minWidth: 120.0,
      //   FloatingActionButton.extended(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.black,
      //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //   onPressed: () => _showModalBottomSheet(),
      //   label: Text('Sort'),
      //   icon: Icon(Icons.sort),
      //   ),
      // ),
    );
  }
}
