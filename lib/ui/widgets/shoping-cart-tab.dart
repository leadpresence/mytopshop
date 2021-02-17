import 'package:flutter/cupertino.dart';
import 'package:mytopshop/app/app-engine-provider.dart';
import 'package:provider/provider.dart';





class ShoppingCartTab extends StatefulWidget {
  @override
  _ShoppingCartTabState createState() {
    return _ShoppingCartTabState();
  }
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppEngine>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
             CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            ),
          ],
        );
      },
    );
  }
}
