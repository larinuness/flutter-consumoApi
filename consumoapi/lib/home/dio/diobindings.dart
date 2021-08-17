
import 'package:consumoapi/home/dio/repository/userRepositoryDio.dart';
import 'package:consumoapi/repository/interfaceUserRepository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'dioController.dart';


class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<InterfaceUserRepository>(UserRepostioryDio(Get.find()));
    Get.put(DioController(Get.find()));
  }
}