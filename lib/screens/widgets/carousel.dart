// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselPage extends StatefulWidget {
  List<dynamic> imglist;

  CarouselPage({required this.imglist});

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imglist
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      item,
                      fit: BoxFit.fill,
                      width: 1000,
                      height: 300,
                    ),
                  ],
                ),
              ),
            ))
        .toList();

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Just a little bit of this., and a little bit of that.,",
            style: TextStyle(
              color: Color(0xff99582a),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: 300,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imglist.map((url) {
            int index = widget.imglist.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.white70 : Colors.white30,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
