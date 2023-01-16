import 'package:flutter/material.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
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
                top: height / 30, left: width / 13, right: width / 13),
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
                    SizedBox(width: width / 14),
                    Text(
                      "Verify your Number",
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
                  "Please verify your\n\nphone number",
                  style: TextStyle(color: Color(0xFFC4C4C4)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height / 12,
                ),
                TextField(
                  maxLength: 5,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "00000",
                    hintStyle: TextStyle(
                      height: 2,
                      color: const Color(0xFFB1B1B1),
                      fontSize: text * 15,
                    ),
                    labelText: "Enter verification code(5-digt)",
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
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: text * 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
