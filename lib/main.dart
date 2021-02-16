import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyTopShop());
}

class MyTopShop extends StatelessWidget {
  // This widget is the root of your application.

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
       theme: const CupertinoThemeData(brightness: Brightness.light),

      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
       navigationBar: CupertinoNavigationBar(
        middle: Text('TopShop Lekki'),
      ),
      child: SizedBox(),
    );
    
  }
}


