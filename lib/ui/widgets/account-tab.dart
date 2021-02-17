import 'package:flutter/cupertino.dart';
import 'package:mytopshop/app/app-engine-provider.dart';
import 'package:provider/provider.dart';

class AccountTab extends StatefulWidget {
  AccountTab({Key key}) : super(key: key);

  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppEngine>(builder: (
      contect,
      child,
      model,
    ) {
      return CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('My Account'),
          )
        ],
      );
    });
  }
}
