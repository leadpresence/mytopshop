import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:mytopshop/app/app-engine-provider.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppEngine>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Topshop Store'),
            ),
          ],
        );
      },
    );
  }
}
