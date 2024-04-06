import 'package:eventmainapp/utils/theme/custom_themes/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../features/events/models/dummy_data.dart';

class EventCarousalCard extends StatelessWidget {
  final EventListData? item;
  const EventCarousalCard({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(16), boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.6),
            offset: Offset(4, 4),
            blurRadius: 16,
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
              child: Column(
            children: [
              AspectRatio(
                aspectRatio: 2,
                child: Image.asset(
                  "assets/images/events/hotel_1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 100,
                color: Colors.black,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 16, bottom: 16, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MAin Title",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 22),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Subtitle",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    FontAwesomeIcons.locationDot,
                                    size: 13,
                                    color: primary,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "10 km to city",
                                      style: TextStyle(fontSize: 13),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Row(children: [
                                  RatingBar(
                                      initialRating: 3,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 24,
                                      ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star_rate_rounded,
                                          color:
                                              Color.fromARGB(217, 255, 242, 0),
                                        ),
                                        half: Icon(
                                          Icons.star_rate_rounded,
                                          color:
                                              Color.fromARGB(217, 255, 242, 0),
                                        ),
                                        empty: Icon(
                                          Icons.star_rate_rounded,
                                          color:
                                              Color.fromARGB(217, 255, 242, 0),
                                        ),
                                      ),
                                      itemPadding: EdgeInsets.zero,
                                      onRatingUpdate: (value) {}),
                                  Text(
                                    "98 Reviews",
                                    style: TextStyle(fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, top: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$23",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 22),
                              ),
                              Text(
                                "/ per night",
                                style: TextStyle(fontSize: 14),
                              )
                            ]),
                      )
                    ]),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
