import 'package:consumoapi/home/dio/dioController.dart';
import 'package:consumoapi/model/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioPage extends GetView<DioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Page'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
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
                child: Text('Tentar novamente'),
              )
            ],
          ),
        );
      }),
    );
  }
}