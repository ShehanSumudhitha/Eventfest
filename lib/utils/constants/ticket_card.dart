import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String orgTTname;
  final String placeT;
  final String evenTTname;
  final String countyTT;
  const TicketCard(
      {super.key,
      required this.evenTTname,
      required this.placeT,
      required this.orgTTname,
      required this.countyTT});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(orgTTname,
                  style: TextStyle(color: Colors.black, fontSize: 33)),
              Text(evenTTname,
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Divider(),
              SizedBox(height: 20),
              Text(countyTT,
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Text(placeT, style: TextStyle(color: Colors.black, fontSize: 10)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("7",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      Text("Row",
                          style: TextStyle(color: Colors.black, fontSize: 15))
                    ],
                  ),
                  Column(
                    children: [
                      Text("18",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      Text("Seat no",
                          style: TextStyle(color: Colors.black, fontSize: 15))
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("8 PM",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      Text("Time",
                          style: TextStyle(color: Colors.black, fontSize: 15))
                    ],
                  ),
                  Column(
                    children: [
                      Text("8.02.2024",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      Text("Date",
                          style: TextStyle(color: Colors.black, fontSize: 15))
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(children: [
                      Text(
                        "Scan\nQR Code",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Expanded(
                        child: Image(
                            image: AssetImage(
                                "assets/images/tickets/qrcode1.png")),
                      )
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
