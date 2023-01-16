import 'package:flutter/material.dart';

class Oneboarding5 extends StatefulWidget {
  const Oneboarding5({Key? key}) : super(key: key);

  @override
  State<Oneboarding5> createState() => _Oneboarding5State();
}

class _Oneboarding5State extends State<Oneboarding5> {
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
              Image.asset("assets/images/Currency-rafiki 1.png"),
              Text(
                "International\nTransactions",
                style:
                    TextStyle(fontSize: text * 38, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height / 28, top: height / 28),
                child: Text(
                    "Provides the 100% freedom of the  financial management\nwith lowest fees on International transactions.",
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
