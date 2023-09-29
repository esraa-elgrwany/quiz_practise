import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = "thirdScreen";

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final imgList = [
    Image.asset("assets/images/marvel.webp"),
    Image.asset("assets/images/spiderman.webp"),
    Image.asset("assets/images/ironman.webp"),
  ];

  int currentIndex = 0;
  String choice = "";
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 2)),
            child: CarouselSlider(
                items: imgList,
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  viewportFraction: 0.9,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  aspectRatio: 1.5,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.4,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ChoiceChip(
                label: Text("choice 1"),
                avatar: Icon(Icons.check_circle_rounded),
                labelPadding: EdgeInsets.all(8),
                labelStyle: TextStyle(fontSize: 20),
                backgroundColor: Colors.grey,
                selected: (choice == "choice 1") ? true : false,
                selectedColor: Colors.brown,
                onSelected: (value) {
                  setState(() {
                    choice = "choice 1";
                  });
                },
              ),
              ChoiceChip(
                label: Text("choice 2"),
                labelPadding: EdgeInsets.all(8),
                labelStyle: TextStyle(fontSize: 20),
                avatar: Icon(Icons.check_circle_rounded),
                backgroundColor: Colors.grey,
                selected: (choice == "choice 2") ? true : false,
                selectedColor: Colors.brown,
                onSelected: (value) {
                  setState(() {
                    choice = "choice 2";
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      )),
    );
  }
}
