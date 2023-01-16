import 'package:flutter/material.dart';

class UnitsofMeasure extends StatefulWidget {
  const UnitsofMeasure({Key? key}) : super(key: key);

  @override
  State<UnitsofMeasure> createState() => _UnitsofMeasureState();
}

List data = ["Metric", "Imperial"];
var _data = "";

class _UnitsofMeasureState extends State<UnitsofMeasure> {
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
                    width: width / 10,
                  ),
                  Text(
                    "UNITS OF MEASURE",
                    style: TextStyle(
                        fontSize: text * 20,
                        color: Colors.white,
                        fontFamily: 'IntegralCF',
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: height / 30),
              const Divider(
                thickness: 1,
                color: Color(0xFF2C2C2E),
              ),
              SizedBox(height: height / 150),
              Expanded(
                child: ListView.separated(
                  itemCount: data.length,
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                    color: Color(0xFF2C2C2E),
                  ),
                  itemBuilder: (context, index) => RadioListTile(
                    title: Text(
                      data[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                    value: data[index],
                    groupValue: _data,
                    onChanged: (value) {
                      setState(
                        () {
                          _data = value.toString();
                        },
                      );
                    },
                    activeColor: Color(0xFFD0FD3E),
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
