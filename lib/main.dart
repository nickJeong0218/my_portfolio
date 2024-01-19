import 'package:flutter/material.dart';
import '../data/data_values.dart';
import '../desktop/ds_about_me.dart';
import '../desktop/ds_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: DataValues.appTitleLong, home: DSMainPage());
  }
}
