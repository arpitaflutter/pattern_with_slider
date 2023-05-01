import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern_with_slider/screens/view/homeScreen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => homeScreen(),
      },
    ),
  );
}