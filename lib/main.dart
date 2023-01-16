import 'package:flutter/material.dart';
import 'package:payment/activity.dart';
import 'package:payment/addphonenumber.dart';
import 'package:payment/editprofile_screen.dart';
import 'package:payment/language_screen.dart';
import 'package:payment/moneytrensfertobank.dart';
import 'package:payment/notification_screen1.dart';
import 'package:payment/notification_screen.dart';
import 'package:payment/onbodaring4.dart';
import 'package:payment/onbodring5.dart';

import 'prectice_screen.dart';
import 'privecy_screen.dart';
import 'profile_screen.dart';
import 'setting_screen.dart';
import 'unitsofmeasure_screen.dart';
import 'verifyphonenumber_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilrScreen(),
    );
  }
}
