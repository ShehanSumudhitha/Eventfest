import 'package:eventmainapp/utils/constants/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "My Tickets",
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(LineAwesomeIcons.edit))
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 450,
                child: PageView(controller: _controller, children: [
                  TicketCard(
                      evenTTname: "The Smiths",
                      placeT: "Dehiwala",
                      orgTTname: "Blaze Ent",
                      countyTT: "Colombo"),
                  TicketCard(
                      evenTTname: "The Smiths",
                      placeT: "Dehiwala",
                      orgTTname: "Blaze Ent",
                      countyTT: "Colombo"),
                  TicketCard(
                      evenTTname: "The Smiths",
                      placeT: "Dehiwala",
                      orgTTname: "Blaze Ent",
                      countyTT: "Colombo"),
                  TicketCard(
                      evenTTname: "The Smiths",
                      placeT: "Dehiwala",
                      orgTTname: "Blaze Ent",
                      countyTT: "Colombo"),
                ]),
              ),
              SizedBox(height: 20),

              //dot indicators
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.pink.shade700,
                  dotColor: Colors.grey.shade100,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
