

import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var img;
  var title;
   Detail({this.img, this.title});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.img), fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10),
        ],
      )
    );

  }
}
