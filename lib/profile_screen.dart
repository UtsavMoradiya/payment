import 'package:flutter/material.dart';
import 'package:payment/addphonenumber.dart';
import 'package:payment/editprofile_screen.dart';
import 'privecy_screen.dart';
import 'setting_screen.dart';

class ProfilrScreen extends StatefulWidget {
  const ProfilrScreen({Key? key}) : super(key: key);

  @override
  State<ProfilrScreen> createState() => _ProfilrScreenState();
}

class _ProfilrScreenState extends State<ProfilrScreen> {
  List<String> data = ["Edit profile", "Privacy Policy", "settings"];
  bool screen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              screen
                  ? Container(
                      height: height / 25,
                      width: width / 12,
                      decoration: BoxDecoration(color: const Color(0xFF2C2C2E), borderRadius: BorderRadius.circular(20)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilrScreen(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(
                      height: height / 25,
                      width: width / 12,
                      decoration: BoxDecoration(color: const Color(0xFF2C2C2E), borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                      ),
                    ),
              SizedBox(
                height: height / 30,
              ),
              SizedBox(
                height: height / 6.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: height / 6.5,
                          width: width / 3.2,
                          child: Padding(
                            padding: EdgeInsets.all(width / 25),
                            child: Image.asset(
                              "assets/images/59.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: height / 6.5,
                          width: width / 3.2,
                          child: const CircularProgressIndicator(
                            value: 0.2,
                            backgroundColor: Colors.red,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.green,
                            ),
                          ),
                        ),
                        screen
                            ? Positioned(
                                left: width / 5.4,
                                top: height / 9,
                                child: Container(
                                  // margin: EdgeInsets.only(left: width / 20, top: height / 60),
                                  height: height / 35,
                                  width: width / 8,
                                  decoration: BoxDecoration(color: const Color(0xFFFF2424), borderRadius: BorderRadius.circular(width / 50)),
                                  child: const Center(
                                    child: Text(
                                      "PRO",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      width: width / 8,
                    ),
                    const VerticalDivider(
                      thickness: 2,
                      color: Color(0xFF2C2C2E),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Joined",
                          style: TextStyle(color: Color(0xFF505050)),
                        ),
                        Text(
                          "2 month ago",
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 50),
              Text(
                "SARAH",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: text * 30, fontFamily: 'IntegralCF', color: Colors.white),
              ),
              Text(
                "WEGAN",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: text * 30, fontFamily: 'IntegralCF', color: Colors.white),
              ),
              SizedBox(height: height / 50),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    data[index],
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditprofileScreen(),
                          ),
                        );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Privecy(),
                          ),
                        );
                      } else if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingScreen(),
                          ),
                        );
                      }
                    },
                    child: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  color: Color(0xFF3A3A3C),
                ),
                itemCount: data.length,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF3A3A3C),
              ),
              SizedBox(
                height: height / 20,
              ),
              screen
                  ? Container(
                      height: height / 9,
                    )
                  : Container(
                      height: height / 9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C2C2E),
                        borderRadius: BorderRadius.circular(height / 50),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: width / 20, top: height / 60),
                            height: height / 35,
                            width: width / 8,
                            decoration: BoxDecoration(color: const Color(0xFFFF2424), borderRadius: BorderRadius.circular(width / 50)),
                            child: const Center(
                              child: Text(
                                "PRO",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18, right: width / 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Upgrade to Premium",
                                  style: TextStyle(color: Colors.white, fontSize: text * 20),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    screen = !screen;

                                    setState(() {});
                                  },
                                  child: const Icon(
                                    Icons.navigate_next,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height / 140,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18),
                            child: const Text(
                              "This subscription is auto-renewable",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: height / 20,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 75),
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
