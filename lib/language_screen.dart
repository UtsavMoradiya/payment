import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> data = [
    "English",
    "Spanish",
    "Chinese",
    "Japanese",
    "French",
    "German",
    "Russian",
    "Portugues",
    "Italian",
    "Korean",
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
          padding: EdgeInsets.symmetric(horizontal: width / 12),
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
                    width: width / 5,
                  ),
                  Text(
                    "LANGUAGE",
                    style: TextStyle(fontSize: text * 20, color: Colors.white, fontFamily: 'IntegralCF', fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: "Search",
                  hintMaxLines: 1,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF2C2C2E),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => ListTile(
                    leading: Text(
                      data[index],
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) => const Divider(
                    thickness: 1,
                    color: Color(0xFF2C2C2E),
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
