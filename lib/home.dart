import 'package:carousel_slider/carousel_slider.dart';
import 'package:eventmainapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myitems = [
    Image.asset('assets/images/image_01.jpeg'),
    Image.asset('assets/images/image_02.jpg'),
    Image.asset('assets/images/image_03.jpg'),
    Image.asset('assets/images/image_04.jpg'),
    Image.asset('assets/images/image_05.jpg'),
    // EventCarousalCard(),
    // EventCarousalCard(),
    // EventCarousalCard(),
    // EventCarousalCard(),
    // EventCarousalCard(),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: EAppTheme.mainTheme,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/person.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          Text(
                            "Brenden Rogers",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Color.fromARGB(255, 213, 50, 110),
                              ),
                              Text(
                                "Colombo",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 213, 50, 110),
                                    fontSize: 20,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Line

              //ADS & PROMOS
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
                child: Text(
                  "ADS & PROMOS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 50, 110),
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      fontFamily: "Dubai"),
                ),
              ),
              //CAROUSEL
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    height: 200,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 400),
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    }),
                items: myitems,
              ),
              SizedBox(height: 20),
              //Animated Smooth Indicator
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: myitems.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                  dotColor: Colors.white,
                  activeDotColor: Colors.grey,
                  paintStyle: PaintingStyle.fill,
                ),
              ),

              SizedBox(height: 5),
              //Line

              //ADS & PROMOS
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
                child: Text(
                  "RECOMMENDED",
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 50, 110),
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      fontFamily: "Dubai"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
