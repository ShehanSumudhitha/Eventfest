import 'package:flutter/material.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cvv,
    required this.expDate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "John Doe",
    cardNumber: "****  ****  ****  1234",
    cvv: "***",
    expDate: "12/21",
    cardColor: Colors.blueGrey,
  ),
  CardModel(
    cardHolderName: "Dave James",
    cardNumber: "****  ****  ****  4321",
    cvv: "***",
    expDate: "01/22",
    cardColor: Colors.cyan,
  ),
];
