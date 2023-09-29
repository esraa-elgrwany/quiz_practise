import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class SecondScreen extends StatelessWidget{
  static const String routeName="secondScreen";
    List<String>imgList=[
      "assets/images/weather.jpg",
      "assets/images/sunny.jpg",
      "assets/images/rain.jpg",
      "assets/images/cloud.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
            color: Colors.white,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds:1),
               autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
               // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: imgList
                  .map((item) => Container(
                child: Center(
                    child:
                    Image.asset(item, fit: BoxFit.cover)),
              ))
                  .toList(),
            )),
      ],
    );
  }
}
