import 'package:flutter/material.dart';

class ComanContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String? Text;
  const ComanContainer({Key? key, this.height, this.width, this.Text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow,
      ),
    );
  }
}
