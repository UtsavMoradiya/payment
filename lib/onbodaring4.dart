import 'package:flutter/material.dart';

class Onbodaring4 extends StatefulWidget {
  const Onbodaring4({Key? key}) : super(key: key);

  @override
  State<Onbodaring4> createState() => _Onbodaring4State();
}

class _Onbodaring4State extends State<Onbodaring4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/images/Mobile payments-rafiki 1.png"),
              Text(
                "Free Transactions",
                style:
                    TextStyle(fontSize: text * 38, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height / 28, top: height / 28),
                child: Text(
                    "Provides the quality of the financial system\nwith free money transactions without any fees.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade600)),
              ),
              Slider(
                value: height / 80,
                max: 100,
                divisions: 5,
                onChanged: (double value) {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
