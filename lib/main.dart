import 'package:carebmi/routers.dart';
import 'package:carebmi/states/onboarding_screen.dart';
import 'package:carebmi/utility/myconstant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

var initRoute;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initRoute = preferences.getInt(MyConstant().keyRoute);
  print('initRoute = $initRoute');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: OnBoardingScreen(),
    );
  }
}
