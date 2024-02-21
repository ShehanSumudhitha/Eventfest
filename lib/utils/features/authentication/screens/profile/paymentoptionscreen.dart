import 'package:eventmainapp/data/repositories/card_data.dart';
import 'package:eventmainapp/utils/features/authentication/models/my_card.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PaymentOptionScreen extends StatelessWidget {
  const PaymentOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Payment Methods",
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.bell))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Saved Payments",
                      style: TextStyle(
                        color: Color.fromARGB(255, 213, 50, 110),
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                        fontFamily: "Dubai",
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          height: 240,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return MyCard(card: myCards[index]);
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: myCards.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
