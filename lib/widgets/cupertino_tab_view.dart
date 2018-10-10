import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoTabView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                title: Text('Shop'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                title: Text('MyCoupon'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pages),
                title: Text('GetCoupon'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.portrait),
                title: Text('Profile'),
              ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: const Text('Next page'),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute<Null>(
                        builder: (BuildContext context) {
                          return CupertinoPageScaffold(
                            navigationBar: CupertinoNavigationBar(
                              middle: Text('Page 2 of tab $index'),
                            ),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}