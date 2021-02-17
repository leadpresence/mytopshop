import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
           label:('Products'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: ('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label:('Cart'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ProductListTab(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SearchTab(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ShoppingCartTab(),
              );
            });
            break;

             case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AccountTab(),
              );
            });
            break;
        
        }
        return returnValue;
      },
    );
  }
}

class ProductListTab extends StatelessWidget {
  const ProductListTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
    );
  }
}


class SearchTab extends StatelessWidget {
  const SearchTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
    );
  }
}


class ShoppingCartTab extends StatelessWidget {
  const ShoppingCartTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
    );
  }
}


class AccountTab extends StatelessWidget {
  const AccountTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
    );
  }
}