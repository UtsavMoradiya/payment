import 'package:flutter/material.dart';

class Privecy extends StatefulWidget {
  const Privecy({Key? key}) : super(key: key);

  @override
  State<Privecy> createState() => _PrivecyState();
}

class _PrivecyState extends State<Privecy> {
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
          padding: EdgeInsets.symmetric(horizontal: width / 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: height / 25,
                    width: width / 12,
                    decoration: BoxDecoration(
                        color: const Color(0xFF2C2C2E),
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
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
                    "PRIVACY POLICY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: text * 20),
                  ),
                ],
              ),
              SizedBox(
                height: height / 25,
              ),
              Text(
                "Lorem ipsum dolor sit amet",
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: text * 18),
              ),
              SizedBox(
                height: height / 35,
              ),
              Text(
                "Consectetur adipiscing elit. Natoque\nphasellus lobortis mattis cursus faucibus\nhac proin risus. Turpis phasellus massa\nullamcorper volutpat. Ornare commodo non\ninteger fermentum nisi, morbi id. Vel tortor\nmauris feugiat amet, maecenas facilisis\nrisus, in faucibus. Vestibulum ullamcorper\nfames eget enim diam fames faucibus duis\nac. Aliquam non tellus semper in dignissim\nnascetur venenatis lacus.",
                style: TextStyle(color: Color(0xFFCCCCCC), fontSize: text * 15),
              ),
              SizedBox(
                height: height / 35,
              ),
              Text(
                "Lectus vel non varius interdum vel tellus\nsed mattis. Sit laoreet auctor arcu mauris\ntincidunt sociis tristique pharetra neque.\nAliquam pharetra elementum nisl sapien.\nErat nisl morbi eu dolor in. Sapien ut lacus\ndui libero morbi tristique.",
                style: TextStyle(color: Color(0xFFCCCCCC), fontSize: text * 15),
              ),
              SizedBox(
                height: height / 35,
              ),
              Text(
                "Sit praesent mi, dolor, magna in\npellentesque sollicitudin odio sed. Sit nibh\naliquam enim ipsum lectus sem fermentum\ncongue velit. Purus habitant odio in morbi\naliquet velit pulvinar. Facilisis ut amet\ninterdum pretium. Fames pretium eget orci facilisis\nmattis est libero facilisis\nullamcorper. Est auctor amet egestas risus\nlibero et. Auctor faucibus sit id fringilla\nvitae. Ac volutpat sodales tristique ut netus\nturpis.",
                style: TextStyle(color: Color(0xFFCCCCCC), fontSize: text * 15),
              ),
              SizedBox(
                height: height / 35,
              ),
              Text(
                "Lorem ipsum dolar sit amet,consectetur",
                style: TextStyle(color: Color(0xFFCCCCCC), fontSize: text * 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
