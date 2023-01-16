import 'package:flutter/material.dart';

class EditprofileScreen extends StatefulWidget {
  const EditprofileScreen({Key? key}) : super(key: key);

  @override
  State<EditprofileScreen> createState() => _EditprofileScreenState();
}

class _EditprofileScreenState extends State<EditprofileScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: width / 12),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      {
                        Navigator.pop(context);
                      };
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
                    width: width / 4,
                  ),
                  Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: text * 25),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 14,
              ),
              Center(
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height / 6.5,
                          width: width / 3.2,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(65),
                          ),
                          child: Image.asset(
                            "assets/images/59.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: height / 10,
                      left: width / 2,
                      child: Container(
                        height: height / 18,
                        width: width / 9,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2C2C2E),
                          borderRadius: BorderRadius.circular(width / 17),
                        ),
                        child: Image.asset("assets/images/Camera.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 15,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              TextField(),
              TextField(),
              SizedBox(
                height: height / 2.5,
              ),
              Container(
                height: height / 16,
                width: width / 1.5,
                decoration: BoxDecoration(
                    color: const Color(0xFFD0FD3E),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
