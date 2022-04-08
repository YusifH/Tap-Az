import 'package:flutter/material.dart';
import 'package:tapaz/pages/splash_screen.dart';
import 'package:tapaz/services/product_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ProductModel.getProductData();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tap Az Clone App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
