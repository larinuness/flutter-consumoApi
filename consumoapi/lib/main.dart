import 'package:consumoapi/home/http/httpBindings.dart';
import 'package:consumoapi/home/http/httpPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'home/homePage.dart';


void main(){
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Get é pra rotas
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomePage(),
        children: [
          GetPage(name: '/http', page: () => HttpPage(),
            binding: HttpBindings(),

          )
        ])

      ],
    );
  }
}