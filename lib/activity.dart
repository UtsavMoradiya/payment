import 'package:flutter/material.dart';
import 'package:payment/addphonenumber.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: height / 15,
                      width: width / 4.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff5063BF),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: width / 15,
                      ),
                    ),
                    SizedBox(width: width / 6),
                    Text(
                      "Activity",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: text * 25),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 15,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                      filled: true,
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  height: height / 50,
                ),
                Row(
                  children: [
                    Text(
                      "Overall Incomings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: text * 20),
                    ),
                    SizedBox(
                      width: width / 3.5,
                    ),
                    const Text(
                      "See All",
                      style: TextStyle(color: Color(0xFF5163BF)),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Color(0xFF5163BF),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 50,
                ),
                Container(
                  height: height / 3.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: width / 17, top: height / 55),
                            height: height / 17,
                            // width: width / 8,
                            decoration: BoxDecoration(
                                color: const Color(0xff5264BE),
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset("assets/images/calendar.png"),
                          ),
                          SizedBox(
                            width: width / 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height / 30),
                            child: Text(
                              "09 - 13 May",
                              style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff1E1E1E),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height / 30),
                            child: Image.asset(
                              "assets/images/cart.png",
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Vector 51.png",
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            top: height / 20,
                            left: width / 4,
                            child: Container(
                              height: height / 18,
                              width: width / 4,
                              decoration: BoxDecoration(
                                  color: const Color(0xff5264BE),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "50.84",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: text * 20),
                                  ),
                                  Image.asset("assets/images/icon.png")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 50,
                ),
                Row(
                  children: [
                    Text(
                      "Overall Outgoings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: text * 20),
                    ),
                    SizedBox(
                      width: width / 3.5,
                    ),
                    const Text(
                      "See All",
                      style: TextStyle(color: Color(0xFF5163BF)),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Color(0xFF5163BF),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 50,
                ),
                Container(
                  height: height / 3.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: width / 17, top: height / 25),
                            height: height / 17,
                            width: width / 8,
                            decoration: BoxDecoration(
                                color: const Color(0xff8CD9E9),
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset("assets/images/calendar.png"),
                          ),
                          SizedBox(
                            width: width / 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height / 18),
                            child: Text(
                              "09 - 13 May",
                              style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff1E1E1E),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height / 18),
                            child: Image.asset(
                              "assets/images/cart.png",
                              color: const Color(0xff5264BE),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 26,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/vectorimage.png",
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            top: height / 20,
                            left: width / 4,
                            child: Container(
                              height: height / 18,
                              width: width / 4,
                              decoration: BoxDecoration(
                                  color: const Color(0xff8CD9E9),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "50.84",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: text * 20),
                                  ),
                                  Image.asset("assets/images/icon.png")
                                ],
                              ),
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
      ),
    );
  }
}
