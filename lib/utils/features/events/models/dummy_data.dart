class EventListData {
  String imagePath;
  String title;
  String sub;
  double distance;
  double rating;
  int reviews;
  int perNight;

  EventListData(
      {this.imagePath = '',
      this.title = "",
      this.sub = "",
      this.distance = 1,
      this.rating = 4,
      this.reviews = 100,
      this.perNight = 100});

  toJson() {
    return {
      "Image": imagePath,
      "Event Name": title,
      "Distance": distance,
      "Rating": rating,
    };
  }

  static List<EventListData> list = [
    EventListData(
      imagePath: "assets/images/events/hotel_1.jpg",
      title: 'Grand Royal Hotel',
      sub: 'Phnom Penh, Cambodia',
      distance: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
    ),
    EventListData(
      imagePath: "assets/images/events/hotel_1.jpg",
      title: 'Morok Denyor Hotel',
      sub: 'Kompong Thom, Cambodia',
      distance: 2.0,
      reviews: 20,
      rating: 4.4,
      perNight: 180,
    ),
    EventListData(
      imagePath: "assets/images/events/hotel_3.jpeg",
      title: 'Sopheap Neary Hotel',
      sub: 'London, Cambodia',
      distance: 2.0,
      reviews: 100,
      rating: 3.4,
      perNight: 180,
    ),
    EventListData(
      imagePath: "assets/images/events/hotel_4.jpeg",
      title: 'Bongkalaw hotel Koh Rong',
      sub: 'Koh Rong, Cambodia',
      distance: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 300,
    ),
    EventListData(
      imagePath: "assets/images/events/hotel_5.jpeg",
      title: 'The Internal Build Hotel',
      sub: 'Phnom Penh, Cambodia',
      distance: 2.0,
      reviews: 80,
      rating: 4.0,
      perNight: 120,
    )
  ];
}
