// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tapaz/contsants/color.dart';
import 'package:tapaz/contsants/data.dart';
import 'package:tapaz/pages/category.dart';
import 'package:tapaz/pages/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.homeback,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.menu,
            color: MyTheme.splash,
          ),
        ),
        title: Text(
          'tap.az',
          style: TextStyle(
              fontSize: 20, color: MyTheme.splash, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              SizedBox(height: 10),
              Category()
            ],
          ),
        ),
      ),
    );
  }
}
