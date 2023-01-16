import 'package:flutter/material.dart';

class Notificationscreen1 extends StatefulWidget {
  const Notificationscreen1({Key? key}) : super(key: key);

  @override
  State<Notificationscreen1> createState() => _Notificationscreen1State();
}

class _Notificationscreen1State extends State<Notificationscreen1> {
  Map notification = {
    "notification": [
      {
        "name": "Workout Reminders",
        "isSwitched": false,
      },
      {
        "name": "Attention",
        "isSwitched": true,
      },
    ],
  };

  var textValue = 'Switch is OFF';

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
          padding: EdgeInsets.symmetric(horizontal: width / 13),
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
                    width: width / 10,
                  ),
                  Text(
                    "NOTIFICATION",
                    style: TextStyle(
                      fontSize: text * 20,
                      color: Colors.white,
                      fontFamily: 'IntegralCF',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 40,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    notification["notification"][index]["name"],
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  trailing: Switch(
                    value: notification["notification"][index]["isSwitched"],
                    activeColor: const Color(0xFF000000),
                    activeTrackColor: const Color(0xFFD0FD3E),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: const Color(0xFF000000),
                    onChanged: (value) {
                      notification["notification"][index]["isSwitched"] = !notification["notification"][index]["isSwitched"];
                      setState(() {});
                    },
                  ),
                ),
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                    color: Color(0xFF2C2C2E),
                  );
                },
                itemCount: notification["notification"].length,
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
