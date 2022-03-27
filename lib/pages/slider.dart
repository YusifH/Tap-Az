import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tapaz/contsants/data.dart';
class SliderCarousel extends StatefulWidget {
  const SliderCarousel({Key? key}) : super(key: key);

  @override
  _SliderCarouselState createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.2,
      width: size.width,
      child: CarouselSlider.builder(
          itemCount: slider.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
            return Container(
              margin: EdgeInsets.only(left: 15),
              child: Image.asset(slider[itemIndex].asset, fit: BoxFit.cover, width: size.width,),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
          ))
    );
  }
}