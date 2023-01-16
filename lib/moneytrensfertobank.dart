import 'package:flutter/material.dart';

class Moneytransfertobank extends StatefulWidget {
  const Moneytransfertobank({Key? key}) : super(key: key);

  @override
  State<Moneytransfertobank> createState() => _MoneytransfertobankState();
}

class _MoneytransfertobankState extends State<Moneytransfertobank> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: height / 22, left: width / 13, right: width / 13),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: height / 18,
                      width: width / 4.7,
                      decoration: const BoxDecoration(
                          color: Color(0xff5063BF),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: width / 15,
                      ),
                    ),
                    SizedBox(width: width / 10),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: text * 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 10,
                ),
                const Text(
                  "Please add your\n\nmobile phone number",
                  style: TextStyle(color: Color(0xFFC4C4C4)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height / 12,
                ),
                TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+1 8456 5846 5846",
                    hintStyle: TextStyle(
                      height: 2,
                      color: const Color(0xFFB1B1B1),
                      fontSize: text * 15,
                    ),
                    labelText: "* phone number",
                    labelStyle: TextStyle(
                      fontSize: text * 20,
                    ),

                  ),
                ),
                SizedBox(
                  height: height / 12,
                ),
                Container(
                  height: height / 15,
                  width: width / 3.5,
                  decoration: const BoxDecoration(
                      color: Color(0xff5063BF),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff5063BF),
                            blurRadius: 100,
                            spreadRadius: 1)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: text * 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
