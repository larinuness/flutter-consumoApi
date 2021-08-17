import 'package:consumoapi/home/http/httpBindings.dart';
import 'package:consumoapi/home/http/httpPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/dio/dioBindings.dart';
import 'home/dio/dioPage.dart';
import 'home/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            children: [
              GetPage(
                name: '/http',
                page: () => HttpPage(),
                binding: HttpBindings(),
              ),
              GetPage(
                name: '/dio',
                page: () => DioPage(),
                binding: DioBindings(),
              )
            ]
        )
      ],
    );
  }
}