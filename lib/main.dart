import 'package:flutter/material.dart';
import 'package:week6/frm_one.dart';
import 'package:week6/frm_two.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: pageFormOne());
  }
}
