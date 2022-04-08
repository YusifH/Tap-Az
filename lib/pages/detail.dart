

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var img;
  var title;
  var price;
   Detail({this.img, this.title, this.price});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: PageView.builder(
                      itemCount: 3,
                      itemBuilder: (_, index){
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(widget.img), fit: BoxFit.cover)
                          ),
                        );
                      } ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            margin: EdgeInsets.only(left: 18, top: 40),
                            child: Center(
                              child: IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios, size: 28,),
                              ),
                            )
                        )
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            margin: EdgeInsets.only(right: 18, top: 40),
                            child: Center(
                              child: IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.favorite_border, size: 28,),
                              ),
                            )
                        )
                    ),
                  ],
                ),
                SizedBox(height: 10),

              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.price.toString(), style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text(widget.title, style: TextStyle(fontSize: 22)),

                ],
              ),
            ),
            SizedBox(height: 8,),

          ],
        ),
      )

    );

  }
}
