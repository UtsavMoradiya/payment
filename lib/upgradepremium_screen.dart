import 'package:flutter/material.dart';

class UpgradePremium extends StatefulWidget {
  const UpgradePremium({Key? key}) : super(key: key);

  @override
  State<UpgradePremium> createState() => _UpgradePremiumState();
}

class _UpgradePremiumState extends State<UpgradePremium> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: height / 25,
                  width: width / 12,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2C2C2E),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Container(
                height: height / 6.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: height / 6.5,
                      width: width / 3.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(65),
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/59.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: width / 8,
                    ),
                    const VerticalDivider(
                      thickness: 2,
                      color: Color(0xFF2C2C2E),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Joined",
                          style: TextStyle(color: Color(0xFF505050)),
                        ),
                        Text(
                          "2 month ago",
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Pro Member",
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          "Until 18 Jul 2022",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "12 Months Subscription",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 50),
              Text(
                "SARAH",
                style: TextStyle(
                    fontSize: text * 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "WEGAN",
                style: TextStyle(
                    fontSize: text * 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              Container(
                height: height / 15,
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              Container(
                height: height / 15,
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              Container(
                height: height / 15,
                width: double.infinity,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 5,
              ),
              SizedBox(
                height: height / 20,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 50),
                child: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.red, fontSize: text * 20),
                ),
              ),
              SizedBox(
                height: height / 35,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
