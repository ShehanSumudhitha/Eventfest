import 'package:eventmainapp/data/repositories/card_data.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CARD NAME",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    card.cardHolderName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              Text(
                card.cardNumber,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("EXP DATE",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text(card.expDate,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CVV NUMBER",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(card.cvv,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/profiles/mastercard.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
