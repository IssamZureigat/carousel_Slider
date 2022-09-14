import 'dart:math';

import 'package:appone/screens/songs_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:appone/main.dart';

class sidesImages extends StatefulWidget {
  const sidesImages({super.key});

  @override
  State<sidesImages> createState() => _sidesImagesState();
}

class _sidesImagesState extends State<sidesImages> {
  final songnames = [
    "Romantic Songs",
    "Rap",
    "Arabic Songs",
    "Franch Songs",
    "JAZZ"
  ];
  final Urlimages = [
    "https://media1.popsugar-assets.com/files/thumbor/nSy3r31J230QriLXlMPkBNJKVh8/314x0:1567x1253/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/07/23/717/n/46186280/827d7dbe5d37320d294845.63372665_/i/Songs-About-Love.jpg",
    "https://i.pinimg.com/236x/01/a6/94/01a69465e56fc82d8c4271c7c8106f48.jpg",
    "https://m.media-amazon.com/images/I/81dZyIpQ53L._SS500_.jpg",
    "https://cdn.theculturetrip.com/wp-content/uploads/2019/03/ia_0410_10-french-musicians-everyone-needs-to-know-01-1.jpg",
    "https://cdn-images.audioaddict.com/b/8/c/1/4/b/b8c14bf36340fb80b8475dfbb599577f.png"
  ];
  String? songname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stunder Musics"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: 
              
              CarouselSlider.builder(
                  options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4),
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true),
                  itemCount: Urlimages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = Urlimages[index];
                    final songname = songnames[index];
                    return buildImage(
                        Urlimages[index], index,songnames[index]);
                  }),

              
            
          ),
        ));
  }
}

Widget buildImage(String Urlimage, int index, String songname) => Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    color: Colors.grey,
    child: 
        Column(
          children: [
            Image.network(
              Urlimage,
              fit: BoxFit.cover,
            
    ),
         Container(
              
                child: Text("${songname}",
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade100)),
              ), ],
        ));
