import 'package:demo_azulmanproject/Screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'Provider/ResendChangeNotifier.dart';

void main() {
  // NEW : Wrapped my app with MultiProvide with ResendChangeNotifier.
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ResendChangeNotifier())
  ], child: MyApp()));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}

