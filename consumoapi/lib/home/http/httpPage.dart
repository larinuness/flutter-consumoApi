import 'package:consumoapi/home/http/httpController.dart';
import 'package:consumoapi/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//GetView é um statelessWidget que tem um controller fazendo um find
class HttpPage extends GetView<HttpController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guia de Http')),
      body: controller.obx((state) {
        return ListView.builder(
          //state é uma lista
          itemCount: state.length,
          itemBuilder: (context, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.name!),
              subtitle: Text('Quantidade de types: ${item.types.length}'),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(error!),
                  TextButton(
                      onPressed: () => controller.findUsers(),
                      child: Text('Tentar novamente')
                  )
                ]
            )
        );
      }),
    );
  }
}
