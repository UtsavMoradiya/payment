import 'package:flutter/material.dart';

class Notificatin extends StatefulWidget {
  const Notificatin({Key? key}) : super(key: key);

  @override
  State<Notificatin> createState() => _NotificatinState();
}

class _NotificatinState extends State<Notificatin> {
  Map notification = {
    "notification": [
      {
        "name": "Congratulations",
        "use": "35% your daily challenge completed",
        "time": "9:45 AM"
      },
      {
        "name": "Attention",
        "use": "Your subscription is going to expire very soon. Subscribe now.",
        "time": "9:38 AM"
      },
      {
        "name": "Daily Activity",
        "use": "Time for your workout session ",
        "time": "8:25 AM"
      },
    ],
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: text * 20),
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              Container(
                height: height / 22,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF2C2C2E),
                    borderRadius: BorderRadius.circular(30)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: const Color(0xFFD0FD3E),
                      borderRadius: BorderRadius.circular(20)),
                  tabs: const [
                    Tab(
                      text: "New",
                    ),
                    Tab(
                      text: "Events",
                    ),
                    Tab(
                      text: "All",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              // SizedBox(
              //   height: height / 20,
              // ),
              const Divider(
                thickness: 2,
                color: Color(0xFF3A3A3C),
              ),

              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 2,
                    color: Color(0xFF3A3A3C),
                  ),
                  itemBuilder: (context, index) => Dismissible(
                    key: Key(""),
                    background: Card(
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: double.infinity,
                            width: width / 7,
                            color: Colors.red,
                            child: Image.asset(
                              "assets/images/Delete.png",
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      // child: Image.asset(
                      //   "assets/images/Delete.png",
                      // ),
                    ),
                    child: ListTile(
                      title: Text(
                        notification["notification"][index]["name"],
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      subtitle: Text(
                        notification["notification"][index]["use"],
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          height: 2,
                        ),
                      ),
                      trailing: Text(
                        notification["notification"][index]["time"],
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  itemCount: notification["notification"].length,
                ),
              ),
              // const Divider(
              //   thickness: 2,
              //   color: Color(0xFF3A3A3C),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
