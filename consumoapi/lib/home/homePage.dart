import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guia acesso Api')),
      body: Container(
        width: double.infinity,
        child: Column(
          //deixa no meio da tela
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () => Get.toNamed('/http'), child: Text('HTTP')),
            TextButton(onPressed: () => Get.toNamed('/dio'), child: Text('DIO')),
            TextButton(onPressed: () {}, child: Text('GetConnect')),
          ],
        ),
      ),
    );
  }
}
