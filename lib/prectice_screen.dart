import 'package:flutter/material.dart';
import 'package:payment/Comanwidget/coman_container.dart';

class Pre extends StatefulWidget {
  const Pre({Key? key}) : super(key: key);

  @override
  State<Pre> createState() => _PreState();
}

class _PreState extends State<Pre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const [
              ComanContainer(
                Text: "utsav",
              ),
              Spacer(),
              ComanContainer(),
            ],
          ),
          Spacer(),
          Row(
            children: const [
              ComanContainer(),
              Spacer(),
              ComanContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
