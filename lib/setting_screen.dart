import 'package:flutter/material.dart';
import 'package:payment/language_screen.dart';
import 'package:payment/notification_screen1.dart';
import 'package:payment/unitsofmeasure_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<String> data = [
    "Units of Measure",
    "Notifications",
    "Language",
    "Contact Us",
  ];
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
          padding: EdgeInsets.symmetric(horizontal: width / 14),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: height / 25,
                      width: width / 12,
                      decoration: BoxDecoration(color: const Color(0xFF2C2C2E), borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 6,
                  ),
                  Text(
                    "SETTINGES",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: text * 20),
                  ),
                ],
              ),
              SizedBox(
                height: height / 40,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF3A3A3C),
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
                            builder: (context) => const UnitsofMeasure(),
                          ),
                        );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notificationscreen1(),
                          ),
                        );
                      } else if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LanguageScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
