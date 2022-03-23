import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:tapaz/contsants/data.dart';

class SliderCarousel extends StatelessWidget {
  const SliderCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.20,
      child: SizedBox(
        child: CarouselSlider.builder(
            slideTransform: CubeTransform(),
            autoSliderDelay: Duration(seconds: 1),
            slideBuilder: (index) {
              return Image.asset(slider[index].asset, fit: BoxFit.cover,);
            },
            autoSliderTransitionTime: Duration(seconds: 1),
            itemCount: slider.length),
      ),
    );
  }
}
